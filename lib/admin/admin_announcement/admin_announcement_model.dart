import '/admin/admin_navigation/admin_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_announcement_widget.dart' show AdminAnnouncementWidget;
import 'package:flutter/material.dart';

class AdminAnnouncementModel extends FlutterFlowModel<AdminAnnouncementWidget> {
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
