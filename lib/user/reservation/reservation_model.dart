import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/user/user_navigation/user_navigation_widget.dart';
import '/index.dart';
import 'reservation_widget.dart' show ReservationWidget;
import 'package:flutter/material.dart';

class ReservationModel extends FlutterFlowModel<ReservationWidget> {
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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BookingRecord? newbooking;
  // Model for UserNavigation component.
  late UserNavigationModel userNavigationModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    userNavigationModel = createModel(context, () => UserNavigationModel());
  }

  @override
  void dispose() {
    userNavigationModel.dispose();
  }
}
