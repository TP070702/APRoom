// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/flutter_flow_util.dart'; // if you need it
import 'package:intl/intl.dart';

Future<bool> isRoomCurrentlyBooked(List<String> bookingTimes) async {
  final rawNow = DateTime.now();
  final now = DateTime(
    rawNow.year,
    rawNow.month,
    rawNow.day,
    rawNow.hour,
    rawNow.minute,
  );

  for (final slot in bookingTimes) {
    // ["8:00 AM", "9:00 AM"]
    final parts = slot.split(' - ');
    if (parts.length != 2) continue;

    final startTime = DateFormat.jm().parse(parts[0].trim());
    final endTime = DateFormat.jm().parse(parts[1].trim());

    // build DateTimes for today at those hours/minutes
    final dayStart = DateTime(
      now.year,
      now.month,
      now.day,
      startTime.hour,
      startTime.minute,
    );
    final dayEnd = DateTime(
      now.year,
      now.month,
      now.day,
      endTime.hour,
      endTime.minute,
    );

    // use inclusive comparison:
    final startsOnOrBefore = !now.isBefore(dayStart); // now >= dayStart
    final endsOnOrAfter = !now.isAfter(dayEnd); // now <= dayEnd

    if (startsOnOrBefore && endsOnOrAfter) {
      return true;
    }
  }

  return false;
}
