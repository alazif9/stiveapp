import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/chat/writing_indicator/writing_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chatbotstiveai_widget.dart' show ChatbotstiveaiWidget;
import 'package:flutter/material.dart';

class ChatbotstiveaiModel extends FlutterFlowModel<ChatbotstiveaiWidget> {
  ///  Local state fields for this page.

  MessageConsultReturnStruct? historicoRoteador;
  void updateHistoricoRoteadorStruct(
      Function(MessageConsultReturnStruct) updateFn) {
    updateFn(historicoRoteador ??= MessageConsultReturnStruct());
  }

  MessageConsultReturnStruct? historicoEspecialista;
  void updateHistoricoEspecialistaStruct(
      Function(MessageConsultReturnStruct) updateFn) {
    updateFn(historicoEspecialista ??= MessageConsultReturnStruct());
  }

  String? mensagemUsuario;

  List<dynamic> chatHistorico = [];
  void addToChatHistorico(dynamic item) => chatHistorico.add(item);
  void removeFromChatHistorico(dynamic item) => chatHistorico.remove(item);
  void removeAtIndexFromChatHistorico(int index) =>
      chatHistorico.removeAt(index);
  void insertAtIndexInChatHistorico(int index, dynamic item) =>
      chatHistorico.insert(index, item);
  void updateChatHistoricoAtIndex(int index, Function(dynamic) updateFn) =>
      chatHistorico[index] = updateFn(chatHistorico[index]);

  bool isTyping = false;

  ///  State fields for stateful widgets in this page.

  // Model for writingIndicator component.
  late WritingIndicatorModel writingIndicatorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (testeAPI)] action in IconButton widget.
  ApiCallResponse? apiResult667;

  @override
  void initState(BuildContext context) {
    writingIndicatorModel = createModel(context, () => WritingIndicatorModel());
  }

  @override
  void dispose() {
    writingIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
