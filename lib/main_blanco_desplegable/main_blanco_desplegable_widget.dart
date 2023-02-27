import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_blanco_desplegable_model.dart';
export 'main_blanco_desplegable_model.dart';

class MainBlancoDesplegableWidget extends StatefulWidget {
  const MainBlancoDesplegableWidget({Key? key}) : super(key: key);

  @override
  _MainBlancoDesplegableWidgetState createState() =>
      _MainBlancoDesplegableWidgetState();
}

class _MainBlancoDesplegableWidgetState
    extends State<MainBlancoDesplegableWidget> {
  late MainBlancoDesplegableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainBlancoDesplegableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).white,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/hc-logo-rojo.png',
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.1,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Clientes',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                collapsed: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed('Buscar_Cliente');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Alta/Edición',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed('Direccion');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Historial',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Reportes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.dashboard,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Productos',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                collapsed: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context
                                                .pushNamed('Buscar_Productos');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Alta/Edición',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context
                                                .pushNamed('Confirmar_Precio');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Confirmar Precio',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed('Cambiar_Estado');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Cambiar Estado',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed(
                                                'Seguimiento_Producto');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Seguimiento',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context
                                                .pushNamed('Vender_Productos');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Venta',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
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
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.edit,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Contratos',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                collapsed: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed(
                                                'Generar_Contrato_PDF');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 8.0, 0.0, 8.0),
                                                child: Text(
                                                  '  Generar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Agregar costos extras',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Cancelar',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '   Listar',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.calendarCheck,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Agenda',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                collapsed: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Ver Agenda',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Hoja de Ruta',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.userShield,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Admin',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                collapsed: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Contabilidad',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                '  Estadísticas',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBlack,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                ),
                              ),
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
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).customColor3,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).white),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          toolbarHeight: 100.0,
          elevation: 4.0,
        ),
      ),
    );
  }
}
