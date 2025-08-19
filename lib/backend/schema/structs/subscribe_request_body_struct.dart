// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscribeRequestBodyStruct extends FFFirebaseStruct {
  SubscribeRequestBodyStruct({
    String? backUrl,
    String? externalReference,
    String? payerEmail,
    String? reason,
    SubscribeRequestBodyAutoRecurringStruct? autoRecurring,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _backUrl = backUrl,
        _externalReference = externalReference,
        _payerEmail = payerEmail,
        _reason = reason,
        _autoRecurring = autoRecurring,
        super(firestoreUtilData);

  // "back_url" field.
  String? _backUrl;
  String get backUrl => _backUrl ?? '';
  set backUrl(String? val) => _backUrl = val;

  bool hasBackUrl() => _backUrl != null;

  // "external_reference" field.
  String? _externalReference;
  String get externalReference => _externalReference ?? '';
  set externalReference(String? val) => _externalReference = val;

  bool hasExternalReference() => _externalReference != null;

  // "payer_email" field.
  String? _payerEmail;
  String get payerEmail => _payerEmail ?? '';
  set payerEmail(String? val) => _payerEmail = val;

  bool hasPayerEmail() => _payerEmail != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "auto_recurring" field.
  SubscribeRequestBodyAutoRecurringStruct? _autoRecurring;
  SubscribeRequestBodyAutoRecurringStruct get autoRecurring =>
      _autoRecurring ?? SubscribeRequestBodyAutoRecurringStruct();
  set autoRecurring(SubscribeRequestBodyAutoRecurringStruct? val) =>
      _autoRecurring = val;

  void updateAutoRecurring(
      Function(SubscribeRequestBodyAutoRecurringStruct) updateFn) {
    updateFn(_autoRecurring ??= SubscribeRequestBodyAutoRecurringStruct());
  }

  bool hasAutoRecurring() => _autoRecurring != null;

  static SubscribeRequestBodyStruct fromMap(Map<String, dynamic> data) =>
      SubscribeRequestBodyStruct(
        backUrl: data['back_url'] as String?,
        externalReference: data['external_reference'] as String?,
        payerEmail: data['payer_email'] as String?,
        reason: data['reason'] as String?,
        autoRecurring:
            data['auto_recurring'] is SubscribeRequestBodyAutoRecurringStruct
                ? data['auto_recurring']
                : SubscribeRequestBodyAutoRecurringStruct.maybeFromMap(
                    data['auto_recurring']),
      );

  static SubscribeRequestBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? SubscribeRequestBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'back_url': _backUrl,
        'external_reference': _externalReference,
        'payer_email': _payerEmail,
        'reason': _reason,
        'auto_recurring': _autoRecurring?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'back_url': serializeParam(
          _backUrl,
          ParamType.String,
        ),
        'external_reference': serializeParam(
          _externalReference,
          ParamType.String,
        ),
        'payer_email': serializeParam(
          _payerEmail,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'auto_recurring': serializeParam(
          _autoRecurring,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SubscribeRequestBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SubscribeRequestBodyStruct(
        backUrl: deserializeParam(
          data['back_url'],
          ParamType.String,
          false,
        ),
        externalReference: deserializeParam(
          data['external_reference'],
          ParamType.String,
          false,
        ),
        payerEmail: deserializeParam(
          data['payer_email'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        autoRecurring: deserializeStructParam(
          data['auto_recurring'],
          ParamType.DataStruct,
          false,
          structBuilder:
              SubscribeRequestBodyAutoRecurringStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SubscribeRequestBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubscribeRequestBodyStruct &&
        backUrl == other.backUrl &&
        externalReference == other.externalReference &&
        payerEmail == other.payerEmail &&
        reason == other.reason &&
        autoRecurring == other.autoRecurring;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([backUrl, externalReference, payerEmail, reason, autoRecurring]);
}

SubscribeRequestBodyStruct createSubscribeRequestBodyStruct({
  String? backUrl,
  String? externalReference,
  String? payerEmail,
  String? reason,
  SubscribeRequestBodyAutoRecurringStruct? autoRecurring,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SubscribeRequestBodyStruct(
      backUrl: backUrl,
      externalReference: externalReference,
      payerEmail: payerEmail,
      reason: reason,
      autoRecurring: autoRecurring ??
          (clearUnsetFields ? SubscribeRequestBodyAutoRecurringStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SubscribeRequestBodyStruct? updateSubscribeRequestBodyStruct(
  SubscribeRequestBodyStruct? subscribeRequestBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    subscribeRequestBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSubscribeRequestBodyStructData(
  Map<String, dynamic> firestoreData,
  SubscribeRequestBodyStruct? subscribeRequestBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subscribeRequestBody == null) {
    return;
  }
  if (subscribeRequestBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && subscribeRequestBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subscribeRequestBodyData =
      getSubscribeRequestBodyFirestoreData(subscribeRequestBody, forFieldValue);
  final nestedData =
      subscribeRequestBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      subscribeRequestBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubscribeRequestBodyFirestoreData(
  SubscribeRequestBodyStruct? subscribeRequestBody, [
  bool forFieldValue = false,
]) {
  if (subscribeRequestBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(subscribeRequestBody.toMap());

  // Handle nested data for "auto_recurring" field.
  addSubscribeRequestBodyAutoRecurringStructData(
    firestoreData,
    subscribeRequestBody.hasAutoRecurring()
        ? subscribeRequestBody.autoRecurring
        : null,
    'auto_recurring',
    forFieldValue,
  );

  // Add any Firestore field values
  subscribeRequestBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSubscribeRequestBodyListFirestoreData(
  List<SubscribeRequestBodyStruct>? subscribeRequestBodys,
) =>
    subscribeRequestBodys
        ?.map((e) => getSubscribeRequestBodyFirestoreData(e, true))
        .toList() ??
    [];
