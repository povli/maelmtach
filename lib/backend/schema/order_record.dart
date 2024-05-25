import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "item_to_take_position" field.
  String? _itemToTakePosition;
  String get itemToTakePosition => _itemToTakePosition ?? '';
  bool hasItemToTakePosition() => _itemToTakePosition != null;

  // "item_to_go_position" field.
  String? _itemToGoPosition;
  String get itemToGoPosition => _itemToGoPosition ?? '';
  bool hasItemToGoPosition() => _itemToGoPosition != null;

  // "item_image" field.
  String? _itemImage;
  String get itemImage => _itemImage ?? '';
  bool hasItemImage() => _itemImage != null;

  // "item_finish_image" field.
  String? _itemFinishImage;
  String get itemFinishImage => _itemFinishImage ?? '';
  bool hasItemFinishImage() => _itemFinishImage != null;

  // "deliver" field.
  DocumentReference? _deliver;
  DocumentReference? get deliver => _deliver;
  bool hasDeliver() => _deliver != null;

  // "deliver_mm" field.
  String? _deliverMm;
  String get deliverMm => _deliverMm ?? '';
  bool hasDeliverMm() => _deliverMm != null;

  // "finish_time" field.
  DateTime? _finishTime;
  DateTime? get finishTime => _finishTime;
  bool hasFinishTime() => _finishTime != null;

  // "something" field.
  String? _something;
  String get something => _something ?? '';
  bool hasSomething() => _something != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "user1" field.
  DocumentReference? _user1;
  DocumentReference? get user1 => _user1;
  bool hasUser1() => _user1 != null;

  // "user_image" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  bool hasUserImage() => _userImage != null;

  // "displayname" field.
  String? _displayname;
  String get displayname => _displayname ?? '';
  bool hasDisplayname() => _displayname != null;

  // "over_ornot" field.
  bool? _overOrnot;
  bool get overOrnot => _overOrnot ?? false;
  bool hasOverOrnot() => _overOrnot != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "orderid" field.
  int? _orderid;
  int get orderid => _orderid ?? 0;
  bool hasOrderid() => _orderid != null;

  // "deliver_overornot" field.
  bool? _deliverOverornot;
  bool get deliverOverornot => _deliverOverornot ?? false;
  bool hasDeliverOverornot() => _deliverOverornot != null;

  // "custom_overornot" field.
  bool? _customOverornot;
  bool get customOverornot => _customOverornot ?? false;
  bool hasCustomOverornot() => _customOverornot != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _item = snapshotData['item'] as String?;
    _itemToTakePosition = snapshotData['item_to_take_position'] as String?;
    _itemToGoPosition = snapshotData['item_to_go_position'] as String?;
    _itemImage = snapshotData['item_image'] as String?;
    _itemFinishImage = snapshotData['item_finish_image'] as String?;
    _deliver = snapshotData['deliver'] as DocumentReference?;
    _deliverMm = snapshotData['deliver_mm'] as String?;
    _finishTime = snapshotData['finish_time'] as DateTime?;
    _something = snapshotData['something'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _user1 = snapshotData['user1'] as DocumentReference?;
    _userImage = snapshotData['user_image'] as String?;
    _displayname = snapshotData['displayname'] as String?;
    _overOrnot = snapshotData['over_ornot'] as bool?;
    _userEmail = snapshotData['user_email'] as String?;
    _orderid = castToType<int>(snapshotData['orderid']);
    _deliverOverornot = snapshotData['deliver_overornot'] as bool?;
    _customOverornot = snapshotData['custom_overornot'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('order')
          : FirebaseFirestore.instance.collectionGroup('order');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('order').doc(id);

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? item,
  String? itemToTakePosition,
  String? itemToGoPosition,
  String? itemImage,
  String? itemFinishImage,
  DocumentReference? deliver,
  String? deliverMm,
  DateTime? finishTime,
  String? something,
  int? price,
  DocumentReference? user1,
  String? userImage,
  String? displayname,
  bool? overOrnot,
  String? userEmail,
  int? orderid,
  bool? deliverOverornot,
  bool? customOverornot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'item_to_take_position': itemToTakePosition,
      'item_to_go_position': itemToGoPosition,
      'item_image': itemImage,
      'item_finish_image': itemFinishImage,
      'deliver': deliver,
      'deliver_mm': deliverMm,
      'finish_time': finishTime,
      'something': something,
      'price': price,
      'user1': user1,
      'user_image': userImage,
      'displayname': displayname,
      'over_ornot': overOrnot,
      'user_email': userEmail,
      'orderid': orderid,
      'deliver_overornot': deliverOverornot,
      'custom_overornot': customOverornot,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.itemToTakePosition == e2?.itemToTakePosition &&
        e1?.itemToGoPosition == e2?.itemToGoPosition &&
        e1?.itemImage == e2?.itemImage &&
        e1?.itemFinishImage == e2?.itemFinishImage &&
        e1?.deliver == e2?.deliver &&
        e1?.deliverMm == e2?.deliverMm &&
        e1?.finishTime == e2?.finishTime &&
        e1?.something == e2?.something &&
        e1?.price == e2?.price &&
        e1?.user1 == e2?.user1 &&
        e1?.userImage == e2?.userImage &&
        e1?.displayname == e2?.displayname &&
        e1?.overOrnot == e2?.overOrnot &&
        e1?.userEmail == e2?.userEmail &&
        e1?.orderid == e2?.orderid &&
        e1?.deliverOverornot == e2?.deliverOverornot &&
        e1?.customOverornot == e2?.customOverornot;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.item,
        e?.itemToTakePosition,
        e?.itemToGoPosition,
        e?.itemImage,
        e?.itemFinishImage,
        e?.deliver,
        e?.deliverMm,
        e?.finishTime,
        e?.something,
        e?.price,
        e?.user1,
        e?.userImage,
        e?.displayname,
        e?.overOrnot,
        e?.userEmail,
        e?.orderid,
        e?.deliverOverornot,
        e?.customOverornot
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
