import '/flutter_flow/flutter_flow_util.dart';
import '/receptionist/receptionist_navigation/receptionist_navigation_widget.dart';
import '/index.dart';
import 'receptionist_announcement_widget.dart'
    show ReceptionistAnnouncementWidget;
import 'package:flutter/material.dart';

class ReceptionistAnnouncementModel
    extends FlutterFlowModel<ReceptionistAnnouncementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ReceptionistNavigation component.
  late ReceptionistNavigationModel receptionistNavigationModel;

  @override
  void initState(BuildContext context) {
    receptionistNavigationModel =
        createModel(context, () => ReceptionistNavigationModel());
  }

  @override
  void dispose() {
    receptionistNavigationModel.dispose();
  }
}
