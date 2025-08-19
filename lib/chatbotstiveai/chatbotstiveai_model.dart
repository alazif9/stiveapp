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

  dynamic role;

  bool isRecording = false;

  String? audioSrcString = 'teste';

  bool isLoading = false;

  FFUploadedFile? imgFile;

  String? threadId;

  String? runId;

  String? section;

  bool isComplete = false;

  String? assistentId;

  ///  State fields for stateful widgets in this page.

  // Model for writingIndicator component.
  late WritingIndicatorModel writingIndicatorModel;
  bool isDataUploading_uploadData7ko = false;
  FFUploadedFile uploadedLocalFile_uploadData7ko =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (transcricaoimagem)] action in IconButton widget.
  ApiCallResponse? apiResultza3;
  // Stores action output result for [Custom Action - stopAudioRecording] action in IconButton widget.
  String? audioSrc;
  // Stores action output result for [Custom Action - fileFromPath] action in IconButton widget.
  FFUploadedFile? file;
  // Stores action output result for [Backend Call - API (transcricaoaudio)] action in IconButton widget.
  ApiCallResponse? apiResult9m6;
  // Stores action output result for [Custom Action - startAudioRecording] action in IconButton widget.
  String? srcPath;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Postar Mensagem)] action in IconButton widget.
  ApiCallResponse? returnApiPostarMsg;
  // Stores action output result for [Backend Call - API (AtribuirAssistente)] action in IconButton widget.
  ApiCallResponse? returnAssistent;
  // Stores action output result for [Backend Call - API (Consultar andamento da Thread)] action in IconButton widget.
  ApiCallResponse? apiResultxi8;
  // Stores action output result for [Backend Call - API (Consultar Mensagens)] action in IconButton widget.
  ApiCallResponse? apiResultmsg;
  // Stores action output result for [Backend Call - API (Postar Mensagem)] action in IconButton widget.
  ApiCallResponse? postarMsg2;
  // Stores action output result for [Backend Call - API (AtribuirAssistente)] action in IconButton widget.
  ApiCallResponse? returnAssistent2;
  // Stores action output result for [Backend Call - API (Consultar andamento da Thread)] action in IconButton widget.
  ApiCallResponse? apiResultxi82;
  // Stores action output result for [Backend Call - API (Consultar Mensagens)] action in IconButton widget.
  ApiCallResponse? apiResultmsg2;

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
