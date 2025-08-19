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
import 'package:stiveapp/custom_code/audio_globals.dart';

/// Set your action name, define your arguments and return parameter,
Future<String?> stopAudioRecording() async {
  globalRecorder ??= AudioRecorder();

  if (await globalRecorder!.isRecording()) {
    final path = await globalRecorder!.stop();
    return path; // Caminho do arquivo gravado
  }
  return null;
}
// and then add the boilerplate code using the green button on the right!
