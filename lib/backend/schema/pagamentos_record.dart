import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentosRecord extends FirestoreRecord {
  PagamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "transaction_amount" field.
  double? _transactionAmount;
  double get transactionAmount => _transactionAmount ?? 0.0;
  bool hasTransactionAmount() => _transactionAmount != null;

  // "payment_method_id" field.
  String? _paymentMethodId;
  String get paymentMethodId => _paymentMethodId ?? '';
  bool hasPaymentMethodId() => _paymentMethodId != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "xIdempotencyKey" field.
  String? _xIdempotencyKey;
  String get xIdempotencyKey => _xIdempotencyKey ?? '';
  bool hasXIdempotencyKey() => _xIdempotencyKey != null;

  // "id_mercado_pago" field.
  String? _idMercadoPago;
  String get idMercadoPago => _idMercadoPago ?? '';
  bool hasIdMercadoPago() => _idMercadoPago != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _transactionAmount = castToType<double>(snapshotData['transaction_amount']);
    _paymentMethodId = snapshotData['payment_method_id'] as String?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _xIdempotencyKey = snapshotData['xIdempotencyKey'] as String?;
    _idMercadoPago = snapshotData['id_mercado_pago'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pagamentos')
          : FirebaseFirestore.instance.collectionGroup('pagamentos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('pagamentos').doc(id);

  static Stream<PagamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagamentosRecord.fromSnapshot(s));

  static Future<PagamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagamentosRecord.fromSnapshot(s));

  static PagamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PagamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagamentosRecordData({
  double? transactionAmount,
  String? paymentMethodId,
  DateTime? dateCreated,
  String? xIdempotencyKey,
  String? idMercadoPago,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transaction_amount': transactionAmount,
      'payment_method_id': paymentMethodId,
      'date_created': dateCreated,
      'xIdempotencyKey': xIdempotencyKey,
      'id_mercado_pago': idMercadoPago,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagamentosRecordDocumentEquality implements Equality<PagamentosRecord> {
  const PagamentosRecordDocumentEquality();

  @override
  bool equals(PagamentosRecord? e1, PagamentosRecord? e2) {
    return e1?.transactionAmount == e2?.transactionAmount &&
        e1?.paymentMethodId == e2?.paymentMethodId &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.xIdempotencyKey == e2?.xIdempotencyKey &&
        e1?.idMercadoPago == e2?.idMercadoPago &&
        e1?.status == e2?.status;
  }

  @override
  int hash(PagamentosRecord? e) => const ListEquality().hash([
        e?.transactionAmount,
        e?.paymentMethodId,
        e?.dateCreated,
        e?.xIdempotencyKey,
        e?.idMercadoPago,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is PagamentosRecord;
}
