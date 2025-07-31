import '/admin/admin_navigation/admin_navigation_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'admin_reservation_widget.dart' show AdminReservationWidget;
import 'package:flutter/material.dart';

class AdminReservationModel extends FlutterFlowModel<AdminReservationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TimeDropDown widget.
  String? timeDropDownValue;
  FormFieldController<String>? timeDropDownValueController;
  // State field(s) for PaxDropDown widget.
  String? paxDropDownValue;
  FormFieldController<String>? paxDropDownValueController;
  // State field(s) for RoomDropDown widget.
  String? roomDropDownValue;
  FormFieldController<String>? roomDropDownValueController;
  // State field(s) for UserDropDown widget.
  String? userDropDownValue;
  FormFieldController<String>? userDropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BookingRecord? newBooking;
  // Model for AdminNavigation component.
  late AdminNavigationModel adminNavigationModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    adminNavigationModel = createModel(context, () => AdminNavigationModel());
  }

  @override
  void dispose() {
    adminNavigationModel.dispose();
  }
}
