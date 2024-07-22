import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../domain/entities/note/note.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class NoteViewBloc extends Bloc<NoteViewEvent, NoteViewState> {
  final Note note;
  NoteViewBloc(this.note)
      : super(note.isText() ? _Text() : _Audio(playig: false, amplitudeStream: AudioPlayer(), pitch: StreamController<double>().stream, )) {
    on<NoteViewEvent>((events, emit) async {
      events.map(play: _play, stop: _stop);
    });
  }

  File? _audio;
  bool _recording = false;
  AudioPlayer _player = AudioPlayer();

  _play (_Play value) async {
    if((state as _Audio).playig) {
    await _player.stop();
    emit(_Audio(playig: false, amplitudeStream: _player, pitch: _player.volumeStream));

    } else {
      emit(_Audio(playig: true, amplitudeStream: _player, pitch: _player.volumeStream));

      try {
        if (_dur != null) {
          _player.seek(Duration(seconds: 0));
        } else {
          _dur = await _player.setAudioSource(
              AudioSource.file(note
                  .voice()
                  .filePath),
              preload: false);
          await _player.load();
        }
      } catch (_) {}
      await _player.play().then((value) {
        add(NoteViewEvent.stop());
      });
      emit(_Audio(playig: true, amplitudeStream: _player, pitch: _player.volumeStream));


    }
  }
  Duration? _dur;

  _stop (_Stop value) async {
    await _player.stop();
    _dur = null;
    emit(_Audio(playig: false, amplitudeStream: _player, pitch: _player.volumeStream));

  }
/*
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

  }*/

}
