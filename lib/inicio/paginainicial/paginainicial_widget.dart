import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'paginainicial_model.dart';
export 'paginainicial_model.dart';

class PaginainicialWidget extends StatefulWidget {
  const PaginainicialWidget({super.key});

  static String routeName = 'Paginainicial';
  static String routePath = '/paginainicial';

  @override
  State<PaginainicialWidget> createState() => _PaginainicialWidgetState();
}

class _PaginainicialWidgetState extends State<PaginainicialWidget> {
  late PaginainicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginainicialModel());

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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ),
              ),
              Container(
                width: 472.6,
                height: 1061.3,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: Image.asset(
                      'assets/images/meajudafundo.png',
                    ).image,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, -0.11),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo2.png',
                    width: 318.0,
                    height: 374.98,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-26.11, 0.73),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(135.0, 0.0, 70.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.goNamed(HomepageWidget.routeName);

                      if (loggedIn != true) {
                        context.pushNamed(AutenticacaoWidget.routeName);
                      }
                    },
                    text: 'Iniciar STIVEAPP!',
                    options: FFButtonOptions(
                      width: 185.69,
                      height: 73.9,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF8F8F6),
                      textStyle: GoogleFonts.ubuntu(
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 100.0,
                      ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
