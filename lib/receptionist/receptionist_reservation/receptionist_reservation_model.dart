import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/receptionist/receptionist_navigation/receptionist_navigation_widget.dart';
import '/index.dart';
import 'receptionist_reservation_widget.dart'
    show ReceptionistReservationWidget;
import 'package:flutter/material.dart';

class ReceptionistReservationModel
    extends FlutterFlowModel<ReceptionistReservationWidget> {
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
  // Model for ReceptionistNavigation component.
  late ReceptionistNavigationModel receptionistNavigationModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    receptionistNavigationModel =
        createModel(context, () => ReceptionistNavigationModel());
  }

  @override
  void dispose() {
    receptionistNavigationModel.dispose();
  }
}
