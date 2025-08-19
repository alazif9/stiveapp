// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:stiveapp/custom_code/audio_globals.dart';

Future<String> startAudioRecording() async {
  final micStatus = await Permission.microphone.request();
  if (micStatus != PermissionStatus.granted) {
    return 'Permissão de microfone negada';
  }

  globalRecorder ??= AudioRecorder();

  // Solicita permissão do microfone
  if (await globalRecorder!.hasPermission()) {
    final dir = await getApplicationDocumentsDirectory();
    final path =
        '${dir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a';

    await globalRecorder!.start(
      const RecordConfig(
        encoder: AudioEncoder.aacLc,
        numChannels: 1,
      ),
      path: path,
    );

    return path;
  } else {
    return "Permissão de microfone negada";
    //throw Exception("Permissão de microfone negada");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
