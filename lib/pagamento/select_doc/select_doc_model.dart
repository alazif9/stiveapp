import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_doc_widget.dart' show SelectDocWidget;
import 'package:flutter/material.dart';

class SelectDocModel extends FlutterFlowModel<SelectDocWidget> {
  ///  Local state fields for this component.

  bool isLoading = false;

  SubscribeRequestBodyStruct? subscribeBody;
  void updateSubscribeBodyStruct(
      Function(SubscribeRequestBodyStruct) updateFn) {
    updateFn(subscribeBody ??= SubscribeRequestBodyStruct());
  }

  String? idempotencyKey;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
