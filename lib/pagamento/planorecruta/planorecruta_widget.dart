import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'planorecruta_model.dart';
export 'planorecruta_model.dart';

class PlanorecrutaWidget extends StatefulWidget {
  const PlanorecrutaWidget({super.key});

  static String routeName = 'Planorecruta';
  static String routePath = '/Planorecruta';

  @override
  State<PlanorecrutaWidget> createState() => _PlanorecrutaWidgetState();
}

class _PlanorecrutaWidgetState extends State<PlanorecrutaWidget> {
  late PlanorecrutaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanorecrutaModel());

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
                'RECRUTA',
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
                            'assets/images/guerradopapel2.png',
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
                                                    '🔰 Plano Recruta \n\nSabemos que a carga da guerra do papel é difícil. Pensando nisto, a STIVEAI oferece serviços gratuitos pra quem está curto de grana! \n\nAqui, mesmo sem pagar nada, você já tem acesso às funções essenciais do Stive.\n\n👮‍♂️ O que você tem no Plano Recruta:\n\t•\t📄 Geração de 2 documentos jurídicos, operacionais ou administrativos com de acordo com o padrão da sua briosa;\n\t•\t🤖 Consulta com a STIVEAI sobre qualquer assunto jurídico ou administrativo pertinente à sua instituição (normativa mais atualizada sobre qualquer assunto, etc.);\n\t•\t🎯 Limite de 6 respostas por mês (diálogos com a IA, do início da consulta até a finalização do documento)\n\t•\t🧠 Base atualizada com modelos, planilhas e regulamentos da sua instituição\n\n⸻\n\n📌 Importante:\n\t•\tAs 40 respostas são renovadas TODO MÊS!\n\t•\tQuando o limite é atingido, você pode aguardar a renovação mensal, assinar um plano completo ou indicar colegas para ganhar respostas extras.\n\n🎁 Indique amigos e ganhe 10 REAIS NO PIX ou 1 MÊS (APENAS UM) de assinatura GRÁTIS! ',
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
                                          onPressed: () async {
                                            context.pushNamed(
                                                PagamentoWidget.routeName);
                                          },
                                          text: 'ENCAMINHAR PLANO ANTIGAO\n',
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
