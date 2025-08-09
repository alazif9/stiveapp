import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'senha_recup_widget.dart' show SenhaRecupWidget;
import 'package:flutter/material.dart';

class SenhaRecupModel extends FlutterFlowModel<SenhaRecupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
