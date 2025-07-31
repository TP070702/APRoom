import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomRecord extends FirestoreRecord {
  RoomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RoomID" field.
  String? _roomID;
  String get roomID => _roomID ?? '';
  bool hasRoomID() => _roomID != null;

  // "IsAvailable" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  bool hasIsAvailable() => _isAvailable != null;

  void _initializeFields() {
    _roomID = snapshotData['RoomID'] as String?;
    _isAvailable = snapshotData['IsAvailable'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Room');

  static Stream<RoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomRecord.fromSnapshot(s));

  static Future<RoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomRecord.fromSnapshot(s));

  static RoomRecord fromSnapshot(DocumentSnapshot snapshot) => RoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomRecordData({
  String? roomID,
  bool? isAvailable,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RoomID': roomID,
      'IsAvailable': isAvailable,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomRecordDocumentEquality implements Equality<RoomRecord> {
  const RoomRecordDocumentEquality();

  @override
  bool equals(RoomRecord? e1, RoomRecord? e2) {
    return e1?.roomID == e2?.roomID && e1?.isAvailable == e2?.isAvailable;
  }

  @override
  int hash(RoomRecord? e) =>
      const ListEquality().hash([e?.roomID, e?.isAvailable]);

  @override
  bool isValidKey(Object? o) => o is RoomRecord;
}
