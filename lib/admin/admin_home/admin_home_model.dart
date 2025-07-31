import '/admin/admin_navigation/admin_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:flutter/material.dart';

class AdminHomeModel extends FlutterFlowModel<AdminHomeWidget> {
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
