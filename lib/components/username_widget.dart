import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'username_model.dart';
export 'username_model.dart';

class UsernameWidget extends StatefulWidget {
  const UsernameWidget({super.key});

  @override
  State<UsernameWidget> createState() => _UsernameWidgetState();
}

class _UsernameWidgetState extends State<UsernameWidget> {
  late UsernameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsernameModel());

    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        width: 370.0,
        child: TextFormField(
          controller: _model.usernameTextController,
          focusNode: _model.usernameFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.usernameTextController',
            Duration(milliseconds: 2000),
            () async {
              safeSetState(() {
                _model.usernameTextController?.text = '';
              });
            },
          ),
          autofocus: true,
          autofillHints: [AutofillHints.email],
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Username',
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: Color(0xFF57636C),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF1F4F8),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF4B39EF),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF5963),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF5963),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            filled: true,
            fillColor: Color(0xFFF1F4F8),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF101213),
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
          keyboardType: TextInputType.emailAddress,
          validator:
              _model.usernameTextControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
