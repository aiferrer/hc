import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submenu_model.dart';
export 'submenu_model.dart';

class SubmenuWidget extends StatefulWidget {
  const SubmenuWidget({Key? key}) : super(key: key);

  @override
  _SubmenuWidgetState createState() => _SubmenuWidgetState();
}

class _SubmenuWidgetState extends State<SubmenuWidget> {
  late SubmenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      color: Color(0x00000000),
      child: ExpandableNotifier(
        initialExpanded: false,
        child: ExpandablePanel(
          header: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.format_list_bulleted_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 28.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Transactions',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
              ],
            ),
          ),
          collapsed: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: 0.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          expanded: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(40.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Spending',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(40.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Income',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            hasIcon: true,
            expandIcon: Icons.chevron_right_rounded,
            collapseIcon: Icons.keyboard_arrow_down_rounded,
            iconColor: FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
      ),
    );
  }
}
