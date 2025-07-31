import '/flutter_flow/flutter_flow_util.dart';
import '/receptionist/receptionist_navigation/receptionist_navigation_widget.dart';
import '/index.dart';
import 'receptionist_settings_widget.dart' show ReceptionistSettingsWidget;
import 'package:flutter/material.dart';

class ReceptionistSettingsModel
    extends FlutterFlowModel<ReceptionistSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for ReceptionistNavigation component.
  late ReceptionistNavigationModel receptionistNavigationModel;

  @override
  void initState(BuildContext context) {
    receptionistNavigationModel =
        createModel(context, () => ReceptionistNavigationModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    receptionistNavigationModel.dispose();
  }
}
