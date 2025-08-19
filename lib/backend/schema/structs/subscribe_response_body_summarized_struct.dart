// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SubscribeResponseBodySummarizedStruct extends FFFirebaseStruct {
  SubscribeResponseBodySummarizedStruct({
    String? quotas,
    String? chargedQuantity,
    String? pendingChargeQuantity,
    String? chargedAmount,
    String? pendingChargeAmount,
    String? semaphore,
    String? lastChargedDate,
    String? lastChargedAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quotas = quotas,
        _chargedQuantity = chargedQuantity,
        _pendingChargeQuantity = pendingChargeQuantity,
        _chargedAmount = chargedAmount,
        _pendingChargeAmount = pendingChargeAmount,
        _semaphore = semaphore,
        _lastChargedDate = lastChargedDate,
        _lastChargedAmount = lastChargedAmount,
        super(firestoreUtilData);

  // "quotas" field.
  String? _quotas;
  String get quotas => _quotas ?? '';
  set quotas(String? val) => _quotas = val;

  bool hasQuotas() => _quotas != null;

  // "charged_quantity" field.
  String? _chargedQuantity;
  String get chargedQuantity => _chargedQuantity ?? '';
  set chargedQuantity(String? val) => _chargedQuantity = val;

  bool hasChargedQuantity() => _chargedQuantity != null;

  // "pending_charge_quantity" field.
  String? _pendingChargeQuantity;
  String get pendingChargeQuantity => _pendingChargeQuantity ?? '';
  set pendingChargeQuantity(String? val) => _pendingChargeQuantity = val;

  bool hasPendingChargeQuantity() => _pendingChargeQuantity != null;

  // "charged_amount" field.
  String? _chargedAmount;
  String get chargedAmount => _chargedAmount ?? '';
  set chargedAmount(String? val) => _chargedAmount = val;

  bool hasChargedAmount() => _chargedAmount != null;

  // "pending_charge_amount" field.
  String? _pendingChargeAmount;
  String get pendingChargeAmount => _pendingChargeAmount ?? '';
  set pendingChargeAmount(String? val) => _pendingChargeAmount = val;

  bool hasPendingChargeAmount() => _pendingChargeAmount != null;

  // "semaphore" field.
  String? _semaphore;
  String get semaphore => _semaphore ?? '';
  set semaphore(String? val) => _semaphore = val;

  bool hasSemaphore() => _semaphore != null;

  // "last_charged_date" field.
  String? _lastChargedDate;
  String get lastChargedDate => _lastChargedDate ?? '';
  set lastChargedDate(String? val) => _lastChargedDate = val;

  bool hasLastChargedDate() => _lastChargedDate != null;

  // "last_charged_amount" field.
  String? _lastChargedAmount;
  String get lastChargedAmount => _lastChargedAmount ?? '';
  set lastChargedAmount(String? val) => _lastChargedAmount = val;

  bool hasLastChargedAmount() => _lastChargedAmount != null;

  static SubscribeResponseBodySummarizedStruct fromMap(
          Map<String, dynamic> data) =>
      SubscribeResponseBodySummarizedStruct(
        quotas: data['quotas'] as String?,
        chargedQuantity: data['charged_quantity'] as String?,
        pendingChargeQuantity: data['pending_charge_quantity'] as String?,
        chargedAmount: data['charged_amount'] as String?,
        pendingChargeAmount: data['pending_charge_amount'] as String?,
        semaphore: data['semaphore'] as String?,
        lastChargedDate: data['last_charged_date'] as String?,
        lastChargedAmount: data['last_charged_amount'] as String?,
      );

  static SubscribeResponseBodySummarizedStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SubscribeResponseBodySummarizedStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'quotas': _quotas,
        'charged_quantity': _chargedQuantity,
        'pending_charge_quantity': _pendingChargeQuantity,
        'charged_amount': _chargedAmount,
        'pending_charge_amount': _pendingChargeAmount,
        'semaphore': _semaphore,
        'last_charged_date': _lastChargedDate,
        'last_charged_amount': _lastChargedAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quotas': serializeParam(
          _quotas,
          ParamType.String,
        ),
        'charged_quantity': serializeParam(
          _chargedQuantity,
          ParamType.String,
        ),
        'pending_charge_quantity': serializeParam(
          _pendingChargeQuantity,
          ParamType.String,
        ),
        'charged_amount': serializeParam(
          _chargedAmount,
          ParamType.String,
        ),
        'pending_charge_amount': serializeParam(
          _pendingChargeAmount,
          ParamType.String,
        ),
        'semaphore': serializeParam(
          _semaphore,
          ParamType.String,
        ),
        'last_charged_date': serializeParam(
          _lastChargedDate,
          ParamType.String,
        ),
        'last_charged_amount': serializeParam(
          _lastChargedAmount,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubscribeResponseBodySummarizedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SubscribeResponseBodySummarizedStruct(
        quotas: deserializeParam(
          data['quotas'],
          ParamType.String,
          false,
        ),
        chargedQuantity: deserializeParam(
          data['charged_quantity'],
          ParamType.String,
          false,
        ),
        pendingChargeQuantity: deserializeParam(
          data['pending_charge_quantity'],
          ParamType.String,
          false,
        ),
        chargedAmount: deserializeParam(
          data['charged_amount'],
          ParamType.String,
          false,
        ),
        pendingChargeAmount: deserializeParam(
          data['pending_charge_amount'],
          ParamType.String,
          false,
        ),
        semaphore: deserializeParam(
          data['semaphore'],
          ParamType.String,
          false,
        ),
        lastChargedDate: deserializeParam(
          data['last_charged_date'],
          ParamType.String,
          false,
        ),
        lastChargedAmount: deserializeParam(
          data['last_charged_amount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubscribeResponseBodySummarizedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubscribeResponseBodySummarizedStruct &&
        quotas == other.quotas &&
        chargedQuantity == other.chargedQuantity &&
        pendingChargeQuantity == other.pendingChargeQuantity &&
        chargedAmount == other.chargedAmount &&
        pendingChargeAmount == other.pendingChargeAmount &&
        semaphore == other.semaphore &&
        lastChargedDate == other.lastChargedDate &&
        lastChargedAmount == other.lastChargedAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        quotas,
        chargedQuantity,
        pendingChargeQuantity,
        chargedAmount,
        pendingChargeAmount,
        semaphore,
        lastChargedDate,
        lastChargedAmount
      ]);
}

SubscribeResponseBodySummarizedStruct
    createSubscribeResponseBodySummarizedStruct({
  String? quotas,
  String? chargedQuantity,
  String? pendingChargeQuantity,
  String? chargedAmount,
  String? pendingChargeAmount,
  String? semaphore,
  String? lastChargedDate,
  String? lastChargedAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        SubscribeResponseBodySummarizedStruct(
          quotas: quotas,
          chargedQuantity: chargedQuantity,
          pendingChargeQuantity: pendingChargeQuantity,
          chargedAmount: chargedAmount,
          pendingChargeAmount: pendingChargeAmount,
          semaphore: semaphore,
          lastChargedDate: lastChargedDate,
          lastChargedAmount: lastChargedAmount,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

SubscribeResponseBodySummarizedStruct?
    updateSubscribeResponseBodySummarizedStruct(
  SubscribeResponseBodySummarizedStruct? subscribeResponseBodySummarized, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        subscribeResponseBodySummarized
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addSubscribeResponseBodySummarizedStructData(
  Map<String, dynamic> firestoreData,
  SubscribeResponseBodySummarizedStruct? subscribeResponseBodySummarized,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subscribeResponseBodySummarized == null) {
    return;
  }
  if (subscribeResponseBodySummarized.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      subscribeResponseBodySummarized.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subscribeResponseBodySummarizedData =
      getSubscribeResponseBodySummarizedFirestoreData(
          subscribeResponseBodySummarized, forFieldValue);
  final nestedData = subscribeResponseBodySummarizedData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      subscribeResponseBodySummarized.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubscribeResponseBodySummarizedFirestoreData(
  SubscribeResponseBodySummarizedStruct? subscribeResponseBodySummarized, [
  bool forFieldValue = false,
]) {
  if (subscribeResponseBodySummarized == null) {
    return {};
  }
  final firestoreData = mapToFirestore(subscribeResponseBodySummarized.toMap());

  // Add any Firestore field values
  subscribeResponseBodySummarized.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSubscribeResponseBodySummarizedListFirestoreData(
  List<SubscribeResponseBodySummarizedStruct>? subscribeResponseBodySummarizeds,
) =>
    subscribeResponseBodySummarizeds
        ?.map((e) => getSubscribeResponseBodySummarizedFirestoreData(e, true))
        .toList() ??
    [];
