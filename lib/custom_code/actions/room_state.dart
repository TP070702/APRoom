// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';

bool roomState(String bookingTime) {
  try {
    final times = bookingTime.split(' - ');
    if (times.length != 2) return false;

    final startTime = DateFormat.jm().parse(times[0]);
    final endTime = DateFormat.jm().parse(times[1]);

    final now = DateTime.now();
    final currentTime =
        DateTime(now.year, now.month, now.day, now.hour, now.minute);
    final todayStartTime = DateTime(
        now.year, now.month, now.day, startTime.hour, startTime.minute);
    final todayEndTime =
        DateTime(now.year, now.month, now.day, endTime.hour, endTime.minute);

    return currentTime.isAfter(todayStartTime) &&
        currentTime.isBefore(todayEndTime);
  } catch (e) {
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
