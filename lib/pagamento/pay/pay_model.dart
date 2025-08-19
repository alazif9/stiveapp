import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_widget.dart' show PayWidget;
import 'package:flutter/material.dart';

class PayModel extends FlutterFlowModel<PayWidget> {
  ///  Local state fields for this component.

  bool isLoading = false;

  SubscribeRequestBodyStruct? subscribeBody;
  void updateSubscribeBodyStruct(
      Function(SubscribeRequestBodyStruct) updateFn) {
    updateFn(subscribeBody ??= SubscribeRequestBodyStruct());
  }

  String? idempotencyKey;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Gerar Assinatura)] action in Button widget.
  ApiCallResponse? apiResultrc3;
  // Stores action output result for [Backend Call - API (pix)] action in Button widget.
  ApiCallResponse? apiResult6mp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
