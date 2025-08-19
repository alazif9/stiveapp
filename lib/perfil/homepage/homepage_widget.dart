import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  static String routeName = 'homepage';
  static String routePath = '/homepage';

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/meajudafundo.png',
                      width: 437.0,
                      height: 833.12,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0,
                                        0.0,
                                        16.0,
                                        0.0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  6.0,
                                                  16.0,
                                                  6.0,
                                                ),
                                            child: Container(
                                              width: 44.59,
                                              height: 44.59,
                                              decoration: BoxDecoration(
                                                color: Color(0x4DA2A2A4),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/meajudafundo.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Color(0xFFE7E6E6),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    PerfilWidget.routeName,
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.person_rounded,
                                                  color: Color(0xFFF2F3F4),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Bem vindo,  ${valueOrDefault<String>(currentUserDisplayName, 'Stivie')}!',
                                                style:
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).headlineMedium.override(
                                                      font: GoogleFonts.ubuntu(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryBackground,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .headlineMedium
                                                              .fontStyle,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black,
                                                          offset: Offset(
                                                            2.0,
                                                            2.0,
                                                          ),
                                                          blurRadius: 2.0,
                                                        ),
                                                      ],
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    StickyHeader(
                                      overlapHeaders: false,
                                      header: Align(
                                        alignment: AlignmentDirectional(
                                          -1.0,
                                          0.0,
                                        ),
                                        child: Text(
                                          'a',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                                color: Color(0x0E3D1313),
                                                fontSize: 1.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.fontWeight,
                                                fontStyle: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                              0.0,
                                              0.0,
                                            ),
                                            child: Text(
                                              'Fale com o Stive!',
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).titleLarge.override(
                                                    font: GoogleFonts.ubuntu(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFFFEFEFE),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).titleLarge.fontStyle,
                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black,
                                                        offset: Offset(
                                                          2.0,
                                                          2.0,
                                                        ),
                                                        blurRadius: 2.0,
                                                      ),
                                                    ],
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  4.0,
                                                ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 270.0,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0.0,
                                                          0.0,
                                                        ),
                                                    child: Flex(
                                                      direction: Axis.vertical,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                100.0,
                                                                12.0,
                                                                100.0,
                                                                12.0,
                                                              ),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.apiResultv4t =
                                                                  await OpenAINovoGroup
                                                                      .criarConversaCall
                                                                      .call();
                                                              if ((_model
                                                                          .apiResultv4t
                                                                          ?.statusCode ??
                                                                      200) ==
                                                                  402) {
                                                                ScaffoldMessenger.of(
                                                                  context,
                                                                ).showSnackBar(
                                                                  SnackBar(
                                                                    content: Text(
                                                                      'Limite mensal de uso atingido',
                                                                      style: TextStyle(
                                                                        color: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).primaryText,
                                                                      ),
                                                                    ),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).error,
                                                                  ),
                                                                );
                                                              } else if ((_model
                                                                      .apiResultv4t
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                context.pushNamed(
                                                                  ChatbotstiveaiWidget
                                                                      .routeName,
                                                                  queryParameters: {
                                                                    'threadId': serializeParam(
                                                                      OpenAINovoGroup
                                                                          .criarConversaCall
                                                                          .id(
                                                                            (_model.apiResultv4t?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              } else {
                                                                ScaffoldMessenger.of(
                                                                  context,
                                                                ).showSnackBar(
                                                                  SnackBar(
                                                                    content: Text(
                                                                      'Falha ao Conectar com o Servidor!',
                                                                      style: TextStyle(
                                                                        color: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).primaryText,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                      milliseconds:
                                                                          4000,
                                                                    ),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).error,
                                                                  ),
                                                                );
                                                              }

                                                              safeSetState(
                                                                () {},
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 230.4,
                                                              height: 230.4,
                                                              decoration: BoxDecoration(
                                                                color: Color(
                                                                  0x9F0F4D78,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                                border: Border.all(
                                                                  color: Color(
                                                                    0xFF868689,
                                                                  ),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                    0.0,
                                                                    0.0,
                                                                  ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                      0.0,
                                                                      0.0,
                                                                    ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets.all(
                                                                        8.0,
                                                                      ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Expanded(
                                                                        child: Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(
                                                                                3.0,
                                                                              ),
                                                                              child: Image.asset(
                                                                                'assets/images/logo2.png',
                                                                                width: double.infinity,
                                                                                height: double.infinity,
                                                                                fit: BoxFit.contain,
                                                                                alignment: Alignment(
                                                                                  0.0,
                                                                                  0.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                        ),
                                                                        child: Text(
                                                                          'Acessar StiveAI',
                                                                          style:
                                                                              FlutterFlowTheme.of(
                                                                                context,
                                                                              ).titleLarge.override(
                                                                                font: GoogleFonts.ubuntu(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).titleLarge.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).primaryBackground,
                                                                                fontSize: 20.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).titleLarge.fontStyle,
                                                                                shadows: [
                                                                                  Shadow(
                                                                                    color: Colors.black,
                                                                                    offset: Offset(
                                                                                      2.0,
                                                                                      2.0,
                                                                                    ),
                                                                                    blurRadius: 2.0,
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
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF0F4D78),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        16.0,
                                                        16.0,
                                                        0.0,
                                                        12.0,
                                                      ),
                                                  child: Text(
                                                    'Histórico recente de conversas:',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.ubuntu(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterFlowTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          shadows: [
                                                            Shadow(
                                                              color:
                                                                  Colors.black,
                                                              offset: Offset(
                                                                2.0,
                                                                2.0,
                                                              ),
                                                              blurRadius: 2.0,
                                                            ),
                                                          ],
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0.0,
                                                        0.0,
                                                        0.0,
                                                        44.0,
                                                      ),
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              0.0,
                                                              16.0,
                                                              0.0,
                                                            ),
                                                        child: Container(
                                                          width: 220.0,
                                                          height: 79.63,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                  0x33000000,
                                                                ),
                                                                offset: Offset(
                                                                  0.0,
                                                                  2.0,
                                                                ),
                                                              ),
                                                            ],
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  12.0,
                                                                ),
                                                            border: Border.all(
                                                              color: Color(
                                                                0xFFE5E7EB,
                                                              ),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                  8.0,
                                                                ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                  child: Text(
                                                                    'DATA/HORA',
                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                      font: GoogleFonts.outfit(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).titleLarge.fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).warning,
                                                                      fontSize:
                                                                          22.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).titleLarge.fontStyle,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0,
                                                                          ),
                                                                      child: RichText(
                                                                        textScaler: MediaQuery.of(
                                                                          context,
                                                                        ).textScaler,
                                                                        text: TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'ASSUNTO',
                                                                              style: TextStyle(
                                                                                color: Color(
                                                                                  0xFF6F61EF,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          style:
                                                                              FlutterFlowTheme.of(
                                                                                context,
                                                                              ).labelMedium.override(
                                                                                font: GoogleFonts.outfit(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).labelMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).warning,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).labelMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              0.0,
                                                              16.0,
                                                              0.0,
                                                            ),
                                                        child: Container(
                                                          width: 220.0,
                                                          height: 78.87,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                  0x33000000,
                                                                ),
                                                                offset: Offset(
                                                                  0.0,
                                                                  2.0,
                                                                ),
                                                              ),
                                                            ],
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  12.0,
                                                                ),
                                                            border: Border.all(
                                                              color: Color(
                                                                0xFFE5E7EB,
                                                              ),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                  8.0,
                                                                ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                  child: Text(
                                                                    'DATA HORA',
                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                      font: GoogleFonts.outfit(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).titleLarge.fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                        0xFF15161E,
                                                                      ),
                                                                      fontSize:
                                                                          22.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).titleLarge.fontStyle,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0,
                                                                          ),
                                                                      child: RichText(
                                                                        textScaler: MediaQuery.of(
                                                                          context,
                                                                        ).textScaler,
                                                                        text: TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'ASSUNTO',
                                                                              style: TextStyle(
                                                                                color: Color(
                                                                                  0xFF6F61EF,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          style:
                                                                              FlutterFlowTheme.of(
                                                                                context,
                                                                              ).labelMedium.override(
                                                                                font: GoogleFonts.outfit(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).labelMedium.fontStyle,
                                                                                ),
                                                                                color: Color(
                                                                                  0xFF606A85,
                                                                                ),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).labelMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              0.0,
                                                              16.0,
                                                              0.0,
                                                            ),
                                                        child: Container(
                                                          width: 220.0,
                                                          height: 93.8,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                  0x33000000,
                                                                ),
                                                                offset: Offset(
                                                                  0.0,
                                                                  2.0,
                                                                ),
                                                              ),
                                                            ],
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  12.0,
                                                                ),
                                                            border: Border.all(
                                                              color: Color(
                                                                0xFFE5E7EB,
                                                              ),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                  8.0,
                                                                ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                  child: Text(
                                                                    'DATA HORA',
                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                      font: GoogleFonts.outfit(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).titleLarge.fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                        0xFF15161E,
                                                                      ),
                                                                      fontSize:
                                                                          22.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).titleLarge.fontStyle,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0,
                                                                          ),
                                                                      child: RichText(
                                                                        textScaler: MediaQuery.of(
                                                                          context,
                                                                        ).textScaler,
                                                                        text: TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'ASSUNTO',
                                                                              style: TextStyle(
                                                                                color: Color(
                                                                                  0xFF6F61EF,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          style:
                                                                              FlutterFlowTheme.of(
                                                                                context,
                                                                              ).labelMedium.override(
                                                                                font: GoogleFonts.outfit(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).labelMedium.fontStyle,
                                                                                ),
                                                                                color: Color(
                                                                                  0xFF606A85,
                                                                                ),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).labelMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
