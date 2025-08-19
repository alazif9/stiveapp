import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

bool newCustomFunction(String? value) {
  return value?.toLowerCase() == 'true';
}

String generateUuidV4() {
  final rand = math.Random.secure();
  List<int> bytes = List<int>.generate(16, (_) => rand.nextInt(256));

  // Ajustes para versão (4) e variante (RFC 4122)
  bytes[6] = (bytes[6] & 0x0f) | 0x40;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;

  String toHex(int n) => n.toRadixString(16).padLeft(2, '0');

  final b = bytes.map(toHex).toList();
  return '${b[0]}${b[1]}${b[2]}${b[3]}-'
      '${b[4]}${b[5]}-'
      '${b[6]}${b[7]}-'
      '${b[8]}${b[9]}-'
      '${b[10]}${b[11]}${b[12]}${b[13]}${b[14]}${b[15]}';
}

String? getSiglaFromApiResponse(String? apiResponse) {
  // // Converte a string JSON em um Map
  final Map<String, dynamic> data = jsonDecode(apiResponse!);

  // Retorna o valor da chave "section"
  return data["section"] ?? "";
}

String? getDescricaoBySigla(String? sigla) {
  final Map<String, String> mapaDescricoes = {
    "P/1": "asst_PsJIOukYf7z2g6PyczmKDWXL",
    "P/3": "asst_ZpBZI3XOurGW6oua4Zcpn84Z",
    "P/4": "asst_VqNH115q2bXJY3BXvgUHcSU4",
    "AJD": "asst_J8YCcnkN9COcngKeovVx21ym",
    "SECRETARIA": "asst_HhUw7Y9S74ePFS59Egw8tQG0"
  };
  return mapaDescricoes[sigla] ?? "Sigla não encontrada";
}

bool hasSectionEquals(String? json) {
  try {
    final decoded = jsonDecode(json!);

    if (decoded is Map<String, dynamic>) {
      return decoded.containsKey('section');
    }

    return false;
  } catch (e) {
    return false; // se não for um JSON válido, retorna falso
  }
}
