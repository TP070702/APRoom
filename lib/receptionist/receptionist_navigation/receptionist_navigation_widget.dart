import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'receptionist_navigation_model.dart';
export 'receptionist_navigation_model.dart';

class ReceptionistNavigationWidget extends StatefulWidget {
  const ReceptionistNavigationWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<ReceptionistNavigationWidget> createState() =>
      _ReceptionistNavigationWidgetState();
}

class _ReceptionistNavigationWidgetState
    extends State<ReceptionistNavigationWidget> {
  late ReceptionistNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceptionistNavigationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0xFFF1F4F8),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          border: Border.all(
            color: Color(0xFF313131),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 35.0,
                      icon: Icon(
                        Icons.calendar_today,
                        color: widget.page == 'RReservation'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context
                            .pushNamed(ReceptionistReservationWidget.routeName);
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 35.0,
                      icon: Icon(
                        Icons.edit,
                        color: widget.page == 'RManage'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(ReceptionistManageWidget.routeName);
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 35.0,
                      icon: Icon(
                        Icons.home,
                        color: widget.page == 'RHome'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(ReceptionistHomeWidget.routeName);
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 35.0,
                      icon: Icon(
                        Icons.notifications_sharp,
                        color: widget.page == 'RAnnouncement'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                            ReceptionistAnnouncementWidget.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
