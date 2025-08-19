// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SubscribeRequestBodyAutoRecurringStruct extends FFFirebaseStruct {
  SubscribeRequestBodyAutoRecurringStruct({
    String? currencyId,
    double? transactionAmount,
    int? frequency,
    String? frequencyType,
    String? freeTrial,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currencyId = currencyId,
        _transactionAmount = transactionAmount,
        _frequency = frequency,
        _frequencyType = frequencyType,
        _freeTrial = freeTrial,
        super(firestoreUtilData);

  // "currency_id" field.
  String? _currencyId;
  String get currencyId => _currencyId ?? '';
  set currencyId(String? val) => _currencyId = val;

  bool hasCurrencyId() => _currencyId != null;

  // "transaction_amount" field.
  double? _transactionAmount;
  double get transactionAmount => _transactionAmount ?? 0.0;
  set transactionAmount(double? val) => _transactionAmount = val;

  void incrementTransactionAmount(double amount) =>
      transactionAmount = transactionAmount + amount;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 0;
  set frequency(int? val) => _frequency = val;

  void incrementFrequency(int amount) => frequency = frequency + amount;

  bool hasFrequency() => _frequency != null;

  // "frequency_type" field.
  String? _frequencyType;
  String get frequencyType => _frequencyType ?? '';
  set frequencyType(String? val) => _frequencyType = val;

  bool hasFrequencyType() => _frequencyType != null;

  // "free_trial" field.
  String? _freeTrial;
  String get freeTrial => _freeTrial ?? '';
  set freeTrial(String? val) => _freeTrial = val;

  bool hasFreeTrial() => _freeTrial != null;

  static SubscribeRequestBodyAutoRecurringStruct fromMap(
          Map<String, dynamic> data) =>
      SubscribeRequestBodyAutoRecurringStruct(
        currencyId: data['currency_id'] as String?,
        transactionAmount: castToType<double>(data['transaction_amount']),
        frequency: castToType<int>(data['frequency']),
        frequencyType: data['frequency_type'] as String?,
        freeTrial: data['free_trial'] as String?,
      );

  static SubscribeRequestBodyAutoRecurringStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SubscribeRequestBodyAutoRecurringStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'currency_id': _currencyId,
        'transaction_amount': _transactionAmount,
        'frequency': _frequency,
        'frequency_type': _frequencyType,
        'free_trial': _freeTrial,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currency_id': serializeParam(
          _currencyId,
          ParamType.String,
        ),
        'transaction_amount': serializeParam(
          _transactionAmount,
          ParamType.double,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.int,
        ),
        'frequency_type': serializeParam(
          _frequencyType,
          ParamType.String,
        ),
        'free_trial': serializeParam(
          _freeTrial,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubscribeRequestBodyAutoRecurringStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SubscribeRequestBodyAutoRecurringStruct(
        currencyId: deserializeParam(
          data['currency_id'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transaction_amount'],
          ParamType.double,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.int,
          false,
        ),
        frequencyType: deserializeParam(
          data['frequency_type'],
          ParamType.String,
          false,
        ),
        freeTrial: deserializeParam(
          data['free_trial'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubscribeRequestBodyAutoRecurringStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubscribeRequestBodyAutoRecurringStruct &&
        currencyId == other.currencyId &&
        transactionAmount == other.transactionAmount &&
        frequency == other.frequency &&
        frequencyType == other.frequencyType &&
        freeTrial == other.freeTrial;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [currencyId, transactionAmount, frequency, frequencyType, freeTrial]);
}

SubscribeRequestBodyAutoRecurringStruct
    createSubscribeRequestBodyAutoRecurringStruct({
  String? currencyId,
  double? transactionAmount,
  int? frequency,
  String? frequencyType,
  String? freeTrial,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        SubscribeRequestBodyAutoRecurringStruct(
          currencyId: currencyId,
          transactionAmount: transactionAmount,
          frequency: frequency,
          frequencyType: frequencyType,
          freeTrial: freeTrial,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

SubscribeRequestBodyAutoRecurringStruct?
    updateSubscribeRequestBodyAutoRecurringStruct(
  SubscribeRequestBodyAutoRecurringStruct? subscribeRequestBodyAutoRecurring, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        subscribeRequestBodyAutoRecurring
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addSubscribeRequestBodyAutoRecurringStructData(
  Map<String, dynamic> firestoreData,
  SubscribeRequestBodyAutoRecurringStruct? subscribeRequestBodyAutoRecurring,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subscribeRequestBodyAutoRecurring == null) {
    return;
  }
  if (subscribeRequestBodyAutoRecurring.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      subscribeRequestBodyAutoRecurring.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subscribeRequestBodyAutoRecurringData =
      getSubscribeRequestBodyAutoRecurringFirestoreData(
          subscribeRequestBodyAutoRecurring, forFieldValue);
  final nestedData = subscribeRequestBodyAutoRecurringData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      subscribeRequestBodyAutoRecurring.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubscribeRequestBodyAutoRecurringFirestoreData(
  SubscribeRequestBodyAutoRecurringStruct? subscribeRequestBodyAutoRecurring, [
  bool forFieldValue = false,
]) {
  if (subscribeRequestBodyAutoRecurring == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(subscribeRequestBodyAutoRecurring.toMap());

  // Add any Firestore field values
  subscribeRequestBodyAutoRecurring.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<
    Map<String, dynamic>> getSubscribeRequestBodyAutoRecurringListFirestoreData(
  List<SubscribeRequestBodyAutoRecurringStruct>?
      subscribeRequestBodyAutoRecurrings,
) =>
    subscribeRequestBodyAutoRecurrings
        ?.map((e) => getSubscribeRequestBodyAutoRecurringFirestoreData(e, true))
        .toList() ??
    [];
