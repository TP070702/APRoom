import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? getCurrentHour() {
  return DateTime.now().hour; // Get current hour as an integer
}

DateTime? getCurrentDate() {
  // Get current UTC time and convert it to Malaysia/Singapore time (UTC+8)
  final utcPlus8 = DateTime.now().toUtc().add(const Duration(hours: 8));

  // Return only the date portion (midnight of today in UTC+8)
  return DateTime(utcPlus8.year, utcPlus8.month, utcPlus8.day);
}

String? getEmailDomain(String email) {
  String domain = email.split("@").last;
  return domain;
}

String? getUsername(String username) {
  return username;
}

bool? roomStatus(String bookingTime) {
  try {
    // Split the booking time string
    final times = bookingTime.split(' - ');
    if (times.length != 2) return false;

    // Parse the start and end times
    final startTime = DateFormat.jm().parse(times[0]);
    final endTime = DateFormat.jm().parse(times[1]);

    // Get the current time (today's date with current hour & minute)
    final now = DateTime.now();
    final currentTime =
        DateTime(now.year, now.month, now.day, now.hour, now.minute);

    // Adjust start and end time to today's date
    final todayStartTime = DateTime(
        now.year, now.month, now.day, startTime.hour, startTime.minute);
    final todayEndTime =
        DateTime(now.year, now.month, now.day, endTime.hour, endTime.minute);

    // Compare
    return currentTime.isAfter(todayStartTime) &&
        currentTime.isBefore(todayEndTime);
  } catch (e) {
    return false; // In case of any error
  }
}
