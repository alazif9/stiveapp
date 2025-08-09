import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'planoantigao_model.dart';
export 'planoantigao_model.dart';

class PlanoantigaoWidget extends StatefulWidget {
  const PlanoantigaoWidget({super.key});

  static String routeName = 'Planoantigao';
  static String routePath = '/feedbackCopy';

  @override
  State<PlanoantigaoWidget> createState() => _PlanoantigaoWidgetState();
}

class _PlanoantigaoWidgetState extends State<PlanoantigaoWidget> {
  late PlanoantigaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanoantigaoModel());

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
        backgroundColor: Color(0xFF0F4D78),
        appBar: AppBar(
          backgroundColor: Color(0xFF0F4D78),
          automaticallyImplyLeading: false,
          leading: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed(PagamentoWidget.routeName);
              },
            ),
          ),
          title: Container(
            width: 324.5,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                'ANTIGÃO',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w500,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 45.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: AlignmentDirectional(0.0, -0.2),
                          image: Image.asset(
                            'assets/images/antigao.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 1270.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 16.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.center,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 570.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    '🔰 Plano Antigão\n\nVocê já rodou muito, conhece a guerra do Word, das normas e da papelada. Chegou a hora de deixar isso com a STIVEAI e focar no que realmente importa.\n\nEste plano é para o antigão experiente, que precisa de velocidade, precisão e confiança total nas respostas da nossa inteligência artificial.\n\n👮‍♂️ O que você tem no Plano Antigão:\n\t•\t📄 Geração ILIMITADA de documentos jurídicos, operacionais e administrativos — tudo dentro da norma da sua Corporação;\n\t•\t🤖 Acesso PRIORITÁRIO à STIVEAI para tirar dúvidas jurídicas, operacionais ou administrativas, com respostas personalizadas conforme seu posto e instituição;\n\t•\t📚 Consulta avançada a modelos internos, legislações, regulamentos e planilhas estratégicas;\n\t•\t🗂️ Histórico completo das suas interações e documentos, com possibilidade de salvar e editar;\n\t•\t🚨 Atualizações constantes com base nos boletins, normas e publicações oficiais da sua instituição.\n\n⸻\n\n📌 Importante:\n\t•\tTudo é adaptado conforme seu posto/graduação e sua PM (PMERJ, PMESP, PMMG, etc.);\n\t•\tA IA aprende com seu uso e melhora suas respostas com o tempo;\n\t•\tAtendimento preferencial para dúvidas ou suporte técnico.\n\n🎁 Indique amigos e continue ganhando:\n\t•\t💸 R\$10 no PIX por cada indicação válida;\n\t•\t🎁 +1 mês GRÁTIS por cada assinatura indicada.\n\n⸻\n\n👉 Se o Plano Recruta te ajuda, o Plano Antigão transforma sua rotina de vez.\nAssine e veja como a STIVEAI é o braço direito da tropa!',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.ubuntu(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFFF6F8FA),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                    ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.ubuntu(
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF606A85),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 570.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print(
                                                'botaoAssAntigao pressed ...');
                                          },
                                          text: 'DIRECIONAR PG PAGAMENTO',
                                          options: FFButtonOptions(
                                            width: 230.0,
                                            height: 52.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFECF4F4),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.ubuntu(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
