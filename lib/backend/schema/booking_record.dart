import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "BookingTime" field.
  String? _bookingTime;
  String get bookingTime => _bookingTime ?? '';
  bool hasBookingTime() => _bookingTime != null;

  // "Pax" field.
  String? _pax;
  String get pax => _pax ?? '';
  bool hasPax() => _pax != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "BookingDate" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "RoomID" field.
  String? _roomID;
  String get roomID => _roomID ?? '';
  bool hasRoomID() => _roomID != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _bookingTime = snapshotData['BookingTime'] as String?;
    _pax = snapshotData['Pax'] as String?;
    _status = snapshotData['Status'] as String?;
    _bookingDate = snapshotData['BookingDate'] as DateTime?;
    _roomID = snapshotData['RoomID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  String? email,
  String? bookingTime,
  String? pax,
  String? status,
  DateTime? bookingDate,
  String? roomID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'BookingTime': bookingTime,
      'Pax': pax,
      'Status': status,
      'BookingDate': bookingDate,
      'RoomID': roomID,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.pax == e2?.pax &&
        e1?.status == e2?.status &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.roomID == e2?.roomID;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash(
      [e?.email, e?.bookingTime, e?.pax, e?.status, e?.bookingDate, e?.roomID]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
