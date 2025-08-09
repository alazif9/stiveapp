import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editarinfo_widget.dart' show EditarinfoWidget;
import 'package:flutter/material.dart';

class EditarinfoModel extends FlutterFlowModel<EditarinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for confirmSenha widget.
  FocusNode? confirmSenhaFocusNode;
  TextEditingController? confirmSenhaTextController;
  late bool confirmSenhaVisibility;
  String? Function(BuildContext, String?)? confirmSenhaTextControllerValidator;
  // State field(s) for posto widget.
  String? postoValue;
  FormFieldController<String>? postoValueController;
  // State field(s) for policia widget.
  String? policiaValue;
  FormFieldController<String>? policiaValueController;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    senhaVisibility = false;
    confirmSenhaVisibility = false;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmSenhaFocusNode?.dispose();
    confirmSenhaTextController?.dispose();
  }

  /// Action blocks.
  Future moddados(BuildContext context) async {}
}
