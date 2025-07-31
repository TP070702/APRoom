import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'room_switch_model.dart';
export 'room_switch_model.dart';

class RoomSwitchWidget extends StatefulWidget {
  const RoomSwitchWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final bool? parameter1;
  final DocumentReference? parameter2;

  @override
  State<RoomSwitchWidget> createState() => _RoomSwitchWidgetState();
}

class _RoomSwitchWidgetState extends State<RoomSwitchWidget> {
  late RoomSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomSwitchModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RoomRecord>(
      stream: RoomRecord.getDocument(widget.parameter2!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }

        final switchRoomRecord = snapshot.data!;

        return Switch.adaptive(
          value: _model.switchValue ??= switchRoomRecord.isAvailable,
          onChanged: (newValue) async {
            safeSetState(() => _model.switchValue = newValue);
            if (newValue) {
              await widget.parameter2!.update(createRoomRecordData(
                isAvailable: true,
              ));
            } else {
              await widget.parameter2!.update(createRoomRecordData(
                isAvailable: false,
              ));
            }
          },
          activeColor: Colors.white,
          activeTrackColor: Color(0xFF1B63FE),
          inactiveTrackColor: Color(0xFF313131),
          inactiveThumbColor: Color(0xFF7B7A83),
        );
      },
    );
  }
}
