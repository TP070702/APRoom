import '/admin/admin_navigation/admin_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_settings_widget.dart' show AdminSettingsWidget;
import 'package:flutter/material.dart';

class AdminSettingsModel extends FlutterFlowModel<AdminSettingsWidget> {
  ///  Local state fields for this page.

  int? counter = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for AdminNavigation component.
  late AdminNavigationModel adminNavigationModel;

  @override
  void initState(BuildContext context) {
    adminNavigationModel = createModel(context, () => AdminNavigationModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    adminNavigationModel.dispose();
  }
}
