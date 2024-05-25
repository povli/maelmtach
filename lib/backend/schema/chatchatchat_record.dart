import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatchatchatRecord extends FirestoreRecord {
  ChatchatchatRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "message_last" field.
  String? _messageLast;
  String get messageLast => _messageLast ?? '';
  bool hasMessageLast() => _messageLast != null;

  // "message_time" field.
  DateTime? _messageTime;
  DateTime? get messageTime => _messageTime;
  bool hasMessageTime() => _messageTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "message_have_seen" field.
  bool? _messageHaveSeen;
  bool get messageHaveSeen => _messageHaveSeen ?? false;
  bool hasMessageHaveSeen() => _messageHaveSeen != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _messageLast = snapshotData['message_last'] as String?;
    _messageTime = snapshotData['message_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _messageHaveSeen = snapshotData['message_have_seen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatchatchat');

  static Stream<ChatchatchatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatchatchatRecord.fromSnapshot(s));

  static Future<ChatchatchatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatchatchatRecord.fromSnapshot(s));

  static ChatchatchatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatchatchatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatchatchatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatchatchatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatchatchatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatchatchatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatchatchatRecordData({
  DocumentReference? user,
  DocumentReference? userA,
  DocumentReference? userB,
  String? messageLast,
  DateTime? messageTime,
  String? image,
  bool? messageHaveSeen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'user_a': userA,
      'user_b': userB,
      'message_last': messageLast,
      'message_time': messageTime,
      'image': image,
      'message_have_seen': messageHaveSeen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatchatchatRecordDocumentEquality
    implements Equality<ChatchatchatRecord> {
  const ChatchatchatRecordDocumentEquality();

  @override
  bool equals(ChatchatchatRecord? e1, ChatchatchatRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.messageLast == e2?.messageLast &&
        e1?.messageTime == e2?.messageTime &&
        e1?.image == e2?.image &&
        e1?.messageHaveSeen == e2?.messageHaveSeen;
  }

  @override
  int hash(ChatchatchatRecord? e) => const ListEquality().hash([
        e?.user,
        e?.userA,
        e?.userB,
        e?.messageLast,
        e?.messageTime,
        e?.image,
        e?.messageHaveSeen
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatchatchatRecord;
}
