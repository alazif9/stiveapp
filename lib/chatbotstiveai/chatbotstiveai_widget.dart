import '/backend/api_requests/api_calls.dart';
import '/chat/writing_indicator/writing_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatbotstiveai_model.dart';
export 'chatbotstiveai_model.dart';

/// Design a modern, police-style AI chat interface using the image asset
/// "meajudafundo.png" as the full-screen background with watermark appearance
/// (repeat or cover).
///
/// The layout should be structured like a simplified ChatGPT interface and
/// optimized for mobile use. The app is used by active military police
/// officers (PMERJ/PMESP). The visual identity should match existing screens
/// (dark blue tones, minimalist, strong police aesthetic).
///
/// Include:
///
/// 1. AppBar:
///    - Title: “STIVEAI – Police Chat”
///    - Background color: dark blue
///    - IconButton for back/navigation if needed
///
/// 2. Chat area (scrollable):
///    - ListView or Column with reversed scroll (newest message at bottom)
///    - Chat bubbles:
///      • User message: aligned right, background blue-gray
///      • AI message: aligned left, background light-gray
///    - If AI response includes image URL → display image
///    - If AI response includes audio URL → display "Listen" button
///
/// 3. Input section (bottom aligned):
///    - TextField with placeholder: “Type your message...”
///    - Send button (paper plane icon)
///    - Microphone icon for speech-to-text
///    - Image upload icon (camera or gallery)
///
/// 4. Loading indicator while AI is responding (spinner or shimmer effect)
///
/// Colors:
/// - Primary: #0D1F2D (dark blue)
/// - Accent: #1B3B5F or olive green for highlights
/// - Font: White or light gray text
///
/// Ensure layout is responsive, clean, mobile-friendly and in line with the
/// style shown in the “Plano Antigão” screen.
///
/// NOTE: This screen will connect to a backend API that returns AI responses
/// with text, audio_url, and image_url. Use placeholders or dummy data for
/// now.
class ChatbotstiveaiWidget extends StatefulWidget {
  const ChatbotstiveaiWidget({
    super.key,
    required this.threadId,
  });

  /// Recebe uma conversa criada com o Roteador ou o threadId antigo
  final String? threadId;

  static String routeName = 'CHATBOTSTIVEAI';
  static String routePath = '/chatbotstiveai';

  @override
  State<ChatbotstiveaiWidget> createState() => _ChatbotstiveaiWidgetState();
}

class _ChatbotstiveaiWidgetState extends State<ChatbotstiveaiWidget> {
  late ChatbotstiveaiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatbotstiveaiModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0D1F2D),
        appBar: AppBar(
          backgroundColor: Color(0xFF0D1F2D),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Text(
                'STIVEAI',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 50.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  shadows: [
                    Shadow(
                      color: Color(0xFF181717),
                      offset: Offset(2.0, 2.0),
                      blurRadius: 2.0,
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/meajuda.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF0D1F2D),
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.9,
              decoration: BoxDecoration(
                color: Color(0xCC0D1F2D),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/meajudafundo.png',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      4.0,
                      4.0,
                    ),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Flex(
                            direction: Axis.vertical,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Visibility(
                                visible: _model.chatHistorico.length > 0,
                                child: Builder(
                                  builder: (context) {
                                    final chat = _model.chatHistorico.toList();

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: chat.length,
                                      itemBuilder: (context, chatIndex) {
                                        final chatItem = chat[chatIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Container(
                                            width: 100.0,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.8,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(16.0),
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Text(
                                                getJsonField(
                                                  chatItem,
                                                  r'''$.content''',
                                                ).toString(),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_model.isTyping)
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: wrapWithModel(
                            model: _model.writingIndicatorModel,
                            updateCallback: () => safeSetState(() {}),
                            child: WritingIndicatorWidget(),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F9FA),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 22.0,
                                  buttonSize: 44.0,
                                  fillColor: Color(0xFF1B3B5F),
                                  icon: Icon(
                                    Icons.image,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Color(0xFF0D1F2D),
                                  buttonSize: 44.0,
                                  fillColor: Color(0xFFF8F9FA),
                                  icon: Icon(
                                    Icons.mic,
                                    color: Color(0xFF0D1F2D),
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Digite sua mensagem...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFFAAAAAA),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF1B3B5F),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF1B3B5F),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF1A1A1A),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 12.0, 16.0, 12.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    maxLines: 4,
                                    minLines: 1,
                                    cursorColor: Colors.white,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Color(0xFF0D1F2D),
                                    borderRadius: 22.0,
                                    borderWidth: 2.0,
                                    buttonSize: 44.0,
                                    fillColor: Color(0xFFF8F9FA),
                                    icon: Icon(
                                      Icons.send,
                                      color: Color(0xFF0D1F2D),
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      _model.mensagemUsuario =
                                          _model.textController.text;
                                      _model
                                          .addToChatHistorico(<String, String?>{
                                        'role': 'user',
                                        'content': _model.mensagemUsuario,
                                      });
                                      _model.isTyping = true;
                                      safeSetState(() {});
                                      _model.apiResult667 =
                                          await TesteAPICall.call(
                                        content: _model.mensagemUsuario,
                                      );

                                      safeSetState(() {
                                        _model.textController?.clear();
                                      });
                                      if ((_model.apiResult667?.succeeded ??
                                          true)) {
                                        _model.addToChatHistorico(<String,
                                            String?>{
                                          'role': 'assistant',
                                          'content': TesteAPICall.teste(
                                            (_model.apiResult667?.jsonBody ??
                                                ''),
                                          ),
                                        });
                                        safeSetState(() {});
                                        _model.isTyping = false;
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
