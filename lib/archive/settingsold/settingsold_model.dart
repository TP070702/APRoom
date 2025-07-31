import '/flutter_flow/flutter_flow_util.dart';
import '/user/user_navigation/user_navigation_widget.dart';
import '/index.dart';
import 'settingsold_widget.dart' show SettingsoldWidget;
import 'package:flutter/material.dart';

class SettingsoldModel extends FlutterFlowModel<SettingsoldWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for UserNavigation component.
  late UserNavigationModel userNavigationModel;

  @override
  void initState(BuildContext context) {
    userNavigationModel = createModel(context, () => UserNavigationModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userNavigationModel.dispose();
  }
}
