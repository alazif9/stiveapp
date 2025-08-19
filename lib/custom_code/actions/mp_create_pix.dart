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
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> mpCreatePix(
  String accessToken,
  String idempotencyKey,
  double amount,
  String description,
  String payeremail,
  String payerfirstname,
  String payerlastname,
) async {
  final url = Uri.parse('https://api.mercadopago.com/v1/payments');

  final body = {
    "transaction_amount": amount,
    "payment_method_id": "pix",
    "description": description,
    "payer": {
      "email": payeremail,
      "first_name": payerfirstname,
      "last_name": payerlastname
    },
    // opcional, mas recomendado:
    // "external_reference": "PEDIDO-123",
    // "notification_url": "https://suaapi.com/webhooks/mp"
  };

  return jsonEncode({"teste": "teste"});
}
