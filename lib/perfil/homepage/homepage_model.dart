import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.
  /// Id da Nova thread
  String? threadId;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Criar Conversa)] action in Container widget.
  ApiCallResponse? apiResultv4t;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
