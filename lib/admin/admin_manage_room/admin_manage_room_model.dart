import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'admin_manage_room_widget.dart' show AdminManageRoomWidget;
import 'package:flutter/material.dart';

class AdminManageRoomModel extends FlutterFlowModel<AdminManageRoomWidget> {
  ///  Local state fields for this page.

  bool isVisible = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for isAvailable widget.
  bool? isAvailableValue;
  FormFieldController<bool>? isAvailableValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
