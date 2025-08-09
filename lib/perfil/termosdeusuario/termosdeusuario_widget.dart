import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termosdeusuario_model.dart';
export 'termosdeusuario_model.dart';

class TermosdeusuarioWidget extends StatefulWidget {
  const TermosdeusuarioWidget({super.key});

  static String routeName = 'termosdeusuario';
  static String routePath = '/termosdeusuario';

  @override
  State<TermosdeusuarioWidget> createState() => _TermosdeusuarioWidgetState();
}

class _TermosdeusuarioWidgetState extends State<TermosdeusuarioWidget> {
  late TermosdeusuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosdeusuarioModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 455.1,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: Image.asset(
                            'assets/images/meajuda.png',
                          ).image,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Termos de Usuário',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                font: GoogleFonts.ubuntu(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: Color(0xFFF8FBFD),
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                shadows: [
                                  Shadow(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 2.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                140.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Color(0xFFF4F5F6),
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 410.4,
                    height: 800.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/meajudafundo.png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '📄 Termos de Uso – Me Ajuda, Stive!\n\n\n1. Objeto\n\nO aplicativo “Me Ajuda, Stive!” tem por finalidade fornecer apoio técnico-operacional e assistência automatizada na redação de documentos administrativos e jurídicos, voltado exclusivamente a policiais militares e demais agentes públicos autorizados.\n\nA plataforma utiliza modelos de inteligência artificial (IA) treinados para auxiliar na produção de documentos compatíveis com os regulamentos internos das corporações militares, respeitando os limites legais aplicáveis.\n\n⸻\n\n2. Aceitação dos Termos\n\nAo utilizar o aplicativo, o usuário declara ter lido, compreendido e aceitado integralmente os presentes Termos de Uso. O uso da plataforma implica em ciência e concordância quanto à responsabilidade funcional pelo uso das informações geradas.\n\n⸻\n\n3. Legalidade da Plataforma\n\nO uso deste aplicativo se fundamenta no princípio da eficiência administrativa (art. 37 da Constituição Federal) e na legitimidade de ferramentas tecnológicas para apoio à atividade pública, nos termos da Lei nº 14.129/2021 (Lei do Governo Digital).\n\nAlém disso, o tratamento de dados pessoais no aplicativo observa a Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709/2018), sendo utilizados exclusivamente para fins de personalização do conteúdo e controle de acesso.\n\n⸻\n\n4. Responsabilidade do Usuário (Policial)\n\nO usuário declara estar ciente de que:\n\t•\tToda decisão ou documento gerado com auxílio da IA deverá ser conferido, adaptado e validado pelo policial responsável, que permanece plenamente responsável pelas consequências administrativas, penais ou disciplinares do seu uso;\n\t•\tO aplicativo não substitui parecer jurídico, sindicância formal ou autoridade competente, sendo apenas uma ferramenta de apoio operacional e documental;\n\t•\tA eventual incorreção, inadequação ou uso indevido do conteúdo gerado poderá caracterizar falha funcional, sujeita às sanções previstas no Estatuto dos Militares Estaduais, Código Penal Militar, regulamentos internos e demais normas aplicáveis;\n\t•\tÉ proibido o uso do aplicativo para finalidades pessoais, ilícitas ou que envolvam o tratamento de dados sigilosos sem a devida autorização institucional.\n\n⸻\n\n5. Propriedade Intelectual e Licenciamento\n\nOs modelos de documentos gerados pelo Stive podem conter estrutura ou formatação padronizada de uso interno, sendo vedada sua reprodução comercial, revenda ou redistribuição não autorizada, nos termos da Lei nº 9.610/1998 (Lei de Direitos Autorais) e do Código Penal Militar.\n\n⸻\n\n6. Privacidade e Proteção de Dados\n\nTodos os dados fornecidos pelo usuário são utilizados de forma restrita, exclusivamente para fins de autenticação, personalização do uso e geração dos documentos. O aplicativo adota as melhores práticas de segurança da informação, nos termos da LGPD.\n\n⸻\n\n7. Limitação de Responsabilidade\n\nA equipe do “Me Ajuda, Stive!” não se responsabiliza por:\n\t•\tErros de interpretação jurídica por parte do usuário;\n\t•\tUso indevido dos documentos gerados;\n\t•\tAções ou omissões decorrentes da utilização da plataforma sem conferência humana;\n\t•\tPrejuízos decorrentes de falha técnica externa à plataforma (como conectividade ou limitações do dispositivo).\n\n⸻\n\n8. Suporte e Atendimento\n\nDúvidas, sugestões ou reclamações podem ser encaminhadas via e-mail para:\n📩 suporte@meajudastive.com.br\n\n',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 7.6,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFF3F5F7),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        textAlign: TextAlign.justify,
                      ),
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
