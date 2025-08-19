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

import 'dart:io';

Future<FFUploadedFile> fileFromPath(String path) async {
  final bytes = await File(path).readAsBytes();
  final name = path.split('/').last.endsWith('.m4a')
      ? path.split('/').last
      : '${path.split('/').last}.m4a';
  return FFUploadedFile(bytes: bytes, name: name);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
