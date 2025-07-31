import '/admin/admin_navigation/admin_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_manage_user_widget.dart' show AdminManageUserWidget;
import 'package:flutter/material.dart';

class AdminManageUserModel extends FlutterFlowModel<AdminManageUserWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminNavigation component.
  late AdminNavigationModel adminNavigationModel;

  @override
  void initState(BuildContext context) {
    adminNavigationModel = createModel(context, () => AdminNavigationModel());
  }

  @override
  void dispose() {
    adminNavigationModel.dispose();
  }
}
