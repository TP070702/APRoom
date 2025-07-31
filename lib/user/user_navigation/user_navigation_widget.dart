import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'user_navigation_model.dart';
export 'user_navigation_model.dart';

class UserNavigationWidget extends StatefulWidget {
  const UserNavigationWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<UserNavigationWidget> createState() => _UserNavigationWidgetState();
}

class _UserNavigationWidgetState extends State<UserNavigationWidget> {
  late UserNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserNavigationModel());
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
                        color: widget.page == 'Reservation'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(ReservationWidget.routeName);
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
                        color: widget.page == 'Home'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(HomeWidget.routeName);
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
                        color: widget.page == 'Notification'
                            ? Color(0xFF1B63FE)
                            : Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(AnnouncementWidget.routeName);
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
