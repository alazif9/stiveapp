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

import 'dart:typed_data';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Uint8List _hexToBytes(String hex) {
  final cleaned = hex.replaceAll(RegExp(r'\s+'), '').toLowerCase();
  if (cleaned.length % 2 != 0) {
    throw FormatException('HEX inválido: comprimento ímpar.');
  }
  final bytes = Uint8List(cleaned.length ~/ 2);
  for (int i = 0; i < cleaned.length; i += 2) {
    final byteStr = cleaned.substring(i, i + 2);
    bytes[i ~/ 2] = int.parse(byteStr, radix: 16);
  }
  return bytes;
}

Future<String> saveHexMp3ToCache(String hexAudio) async {
  final bytes = _hexToBytes(hexAudio);
  final dir = await getTemporaryDirectory();
  final file = File(
      '${dir.path}/minimax_tts_${DateTime.now().millisecondsSinceEpoch}.mp3');
  await file.writeAsBytes(bytes, flush: true);
  return file.path; // → use este caminho para tocar o áudio
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
