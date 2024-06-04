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

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class VoiceNoteBloc extends Bloc<VoiceNoteEvent, VoiceNoteState> {
  VoiceNoteBloc()
      : super(_Initial(
            audio: null,
            recording: false,
            amplitudeStream: StreamController<Amplitude>().stream)) {
    on<VoiceNoteEvent>((events, emit) async {
      events.map(record: _record);
    });
  }

  File? _audio;
  bool _recording = false;

  _record(_Record value) async {
    try {
      if (_recording) {

      _subs?.cancel();
       await _recorder.stop().then((value) {
          final path = value;
          if (path != null) {
            _audio = File(path);
            debugPrint('path.toString()');
            emit(_Initial(
                audio: _audio,
                recording: _recording,
                amplitudeStream: _controller.stream));

          }

        });


        _controller.add(Amplitude(current: 0, max: 10));
      _recording = false;

      } else {
        if (await _recorder.hasPermission()) {
          debugPrint('a1');
          const encoder = AudioEncoder.aacLc;
          if (!(await _isEncoderSupported(encoder) )) {
            return;
          }
          debugPrint('a2');

          const config = RecordConfig(encoder: encoder, numChannels: 1);
          _recorder.start(config, path: await _getPath());

          Timer.periodic(const Duration(milliseconds: 50), (timer) async{
            final amp = await _recorder.getAmplitude();
            debugPrint(amp.current.toString() + ' ' + amp.max.toString() );
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
        audio: _audio,
        recording: _recording,
        amplitudeStream: _controller.stream));
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
