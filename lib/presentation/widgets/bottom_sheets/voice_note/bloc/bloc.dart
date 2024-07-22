import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../domain/entities/note/voice_note/voice_note.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class VoiceNoteBloc extends Bloc<VoiceNoteEvent, VoiceNoteState> {
  VoiceNoteBloc()
      : super(_Initial(
      canSave: false,
            audio: null,
            recording: false,
            amplitudeStream: StreamController<Amplitude>().stream, started: false)) {
    on<VoiceNoteEvent>((events, emit) async {
      events.map(record: _record, save: _save);
    });
  }

  File? _audio;
  bool _recording = false;
  bool _canSave = false;

  _save (_Save value) async {
    _subs?.cancel();

    await _recorder.stop().then((value) {
      final path = value;
      if (path != null) {
        _audio = File(path);
        emit(_Initial(
          canSave: _canSave,
            audio: _audio,
            recording: _recording,
            amplitudeStream: _controller.stream, started: _fileStarted));

      }

    });

    Navigator.of(value.context,
        rootNavigator: true)
        .pop(VoiceNote(id: -1, dateTime: value.dateTime!, name: value.text, filePath: state.audio!.path!));


    _controller.add(Amplitude(current: 0, max: 10));
  }

  bool _fileStarted = false;

  _record(_Record value) async {
    try {
      if (_recording) {

      _subs?.cancel();

       await _recorder.pause();

      _fileStarted = true;
      _canSave =  true;

        _controller.add(Amplitude(current: 0, max: 10));
      _recording = false;

      } else {
        if (await _recorder.hasPermission()) {
          final encoder = Platform.isIOS ? AudioEncoder.aacLc : AudioEncoder.amrNb;
          if (!(await _isEncoderSupported(encoder) )) {
            return;
          }
          _canSave = false;

          final config = RecordConfig(encoder: encoder, numChannels: 1);
          if(_fileStarted) {
            _recorder.resume();
          } else {
            _recorder.start(config, path: await _getPath());
          }
          Timer.periodic(const Duration(milliseconds: 50), (timer) async{
            final amp = await _recorder.getAmplitude();
            _controller.add(amp);
            if(!_recording) timer.cancel();
          });
        }

        _recording = true;

      }
    } catch (_) {
      debugPrint(_.toString());
    }
    emit(_Initial(
      canSave: _canSave,
        audio: _audio,
        recording: _recording,
        amplitudeStream: _controller.stream, started: _fileStarted));
  }

  StreamSubscription? _subs;

  Future<String> _getPath() async {
    final dir = await getApplicationDocumentsDirectory();
    return join(
      dir.path,
      'audio_${DateTime.now().millisecondsSinceEpoch}.m4a',
    );
  }

  Future<bool> _isEncoderSupported(AudioEncoder encoder) async {
    final isSupported = await _recorder.isEncoderSupported(
      encoder,
    );

    if (!isSupported) {
      debugPrint('${encoder.name} is not supported on this platform.');
      debugPrint('Supported encoders are:');

      for (final e in AudioEncoder.values) {
        if (await _recorder.isEncoderSupported(e)) {
          debugPrint('- ${encoder.name}');
        }
      }
    }
    return isSupported;

  }

  final StreamController<Amplitude> _controller =
      StreamController<Amplitude>.broadcast();
  final _recorder = AudioRecorder();
}
