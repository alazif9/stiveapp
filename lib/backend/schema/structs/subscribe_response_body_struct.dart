// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscribeResponseBodyStruct extends FFFirebaseStruct {
  SubscribeResponseBodyStruct({
    String? id,
    String? payerId,
    String? payerEmail,
    String? backUrl,
    String? collectorId,
    String? applicationId,
    String? status,
    String? reason,
    String? externalReference,
    String? dateCreated,
    String? lastModified,
    String? initPoint,
    SubscribeRequestBodyAutoRecurringStruct? autoRecurring,
    SubscribeResponseBodySummarizedStruct? summarized,
    String? nextPaymentDate,
    String? paymentMethodId,
    String? paymentMethodIdSecondary,
    String? firstInvoiceOffset,
    String? subscriptionId,
    String? owner,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _payerId = payerId,
        _payerEmail = payerEmail,
        _backUrl = backUrl,
        _collectorId = collectorId,
        _applicationId = applicationId,
        _status = status,
        _reason = reason,
        _externalReference = externalReference,
        _dateCreated = dateCreated,
        _lastModified = lastModified,
        _initPoint = initPoint,
        _autoRecurring = autoRecurring,
        _summarized = summarized,
        _nextPaymentDate = nextPaymentDate,
        _paymentMethodId = paymentMethodId,
        _paymentMethodIdSecondary = paymentMethodIdSecondary,
        _firstInvoiceOffset = firstInvoiceOffset,
        _subscriptionId = subscriptionId,
        _owner = owner,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "payer_id" field.
  String? _payerId;
  String get payerId => _payerId ?? '';
  set payerId(String? val) => _payerId = val;

  bool hasPayerId() => _payerId != null;

  // "payer_email" field.
  String? _payerEmail;
  String get payerEmail => _payerEmail ?? '';
  set payerEmail(String? val) => _payerEmail = val;

  bool hasPayerEmail() => _payerEmail != null;

  // "back_url" field.
  String? _backUrl;
  String get backUrl => _backUrl ?? '';
  set backUrl(String? val) => _backUrl = val;

  bool hasBackUrl() => _backUrl != null;

  // "collector_id" field.
  String? _collectorId;
  String get collectorId => _collectorId ?? '';
  set collectorId(String? val) => _collectorId = val;

  bool hasCollectorId() => _collectorId != null;

  // "application_id" field.
  String? _applicationId;
  String get applicationId => _applicationId ?? '';
  set applicationId(String? val) => _applicationId = val;

  bool hasApplicationId() => _applicationId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "external_reference" field.
  String? _externalReference;
  String get externalReference => _externalReference ?? '';
  set externalReference(String? val) => _externalReference = val;

  bool hasExternalReference() => _externalReference != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "last_modified" field.
  String? _lastModified;
  String get lastModified => _lastModified ?? '';
  set lastModified(String? val) => _lastModified = val;

  bool hasLastModified() => _lastModified != null;

  // "init_point" field.
  String? _initPoint;
  String get initPoint => _initPoint ?? '';
  set initPoint(String? val) => _initPoint = val;

  bool hasInitPoint() => _initPoint != null;

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

  // "summarized" field.
  SubscribeResponseBodySummarizedStruct? _summarized;
  SubscribeResponseBodySummarizedStruct get summarized =>
      _summarized ?? SubscribeResponseBodySummarizedStruct();
  set summarized(SubscribeResponseBodySummarizedStruct? val) =>
      _summarized = val;

  void updateSummarized(
      Function(SubscribeResponseBodySummarizedStruct) updateFn) {
    updateFn(_summarized ??= SubscribeResponseBodySummarizedStruct());
  }

  bool hasSummarized() => _summarized != null;

  // "next_payment_date" field.
  String? _nextPaymentDate;
  String get nextPaymentDate => _nextPaymentDate ?? '';
  set nextPaymentDate(String? val) => _nextPaymentDate = val;

  bool hasNextPaymentDate() => _nextPaymentDate != null;

  // "payment_method_id" field.
  String? _paymentMethodId;
  String get paymentMethodId => _paymentMethodId ?? '';
  set paymentMethodId(String? val) => _paymentMethodId = val;

  bool hasPaymentMethodId() => _paymentMethodId != null;

  // "payment_method_id_secondary" field.
  String? _paymentMethodIdSecondary;
  String get paymentMethodIdSecondary => _paymentMethodIdSecondary ?? '';
  set paymentMethodIdSecondary(String? val) => _paymentMethodIdSecondary = val;

  bool hasPaymentMethodIdSecondary() => _paymentMethodIdSecondary != null;

  // "first_invoice_offset" field.
  String? _firstInvoiceOffset;
  String get firstInvoiceOffset => _firstInvoiceOffset ?? '';
  set firstInvoiceOffset(String? val) => _firstInvoiceOffset = val;

  bool hasFirstInvoiceOffset() => _firstInvoiceOffset != null;

  // "subscription_id" field.
  String? _subscriptionId;
  String get subscriptionId => _subscriptionId ?? '';
  set subscriptionId(String? val) => _subscriptionId = val;

  bool hasSubscriptionId() => _subscriptionId != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  set owner(String? val) => _owner = val;

  bool hasOwner() => _owner != null;

  static SubscribeResponseBodyStruct fromMap(Map<String, dynamic> data) =>
      SubscribeResponseBodyStruct(
        id: data['id'] as String?,
        payerId: data['payer_id'] as String?,
        payerEmail: data['payer_email'] as String?,
        backUrl: data['back_url'] as String?,
        collectorId: data['collector_id'] as String?,
        applicationId: data['application_id'] as String?,
        status: data['status'] as String?,
        reason: data['reason'] as String?,
        externalReference: data['external_reference'] as String?,
        dateCreated: data['date_created'] as String?,
        lastModified: data['last_modified'] as String?,
        initPoint: data['init_point'] as String?,
        autoRecurring:
            data['auto_recurring'] is SubscribeRequestBodyAutoRecurringStruct
                ? data['auto_recurring']
                : SubscribeRequestBodyAutoRecurringStruct.maybeFromMap(
                    data['auto_recurring']),
        summarized: data['summarized'] is SubscribeResponseBodySummarizedStruct
            ? data['summarized']
            : SubscribeResponseBodySummarizedStruct.maybeFromMap(
                data['summarized']),
        nextPaymentDate: data['next_payment_date'] as String?,
        paymentMethodId: data['payment_method_id'] as String?,
        paymentMethodIdSecondary:
            data['payment_method_id_secondary'] as String?,
        firstInvoiceOffset: data['first_invoice_offset'] as String?,
        subscriptionId: data['subscription_id'] as String?,
        owner: data['owner'] as String?,
      );

  static SubscribeResponseBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? SubscribeResponseBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'payer_id': _payerId,
        'payer_email': _payerEmail,
        'back_url': _backUrl,
        'collector_id': _collectorId,
        'application_id': _applicationId,
        'status': _status,
        'reason': _reason,
        'external_reference': _externalReference,
        'date_created': _dateCreated,
        'last_modified': _lastModified,
        'init_point': _initPoint,
        'auto_recurring': _autoRecurring?.toMap(),
        'summarized': _summarized?.toMap(),
        'next_payment_date': _nextPaymentDate,
        'payment_method_id': _paymentMethodId,
        'payment_method_id_secondary': _paymentMethodIdSecondary,
        'first_invoice_offset': _firstInvoiceOffset,
        'subscription_id': _subscriptionId,
        'owner': _owner,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'payer_id': serializeParam(
          _payerId,
          ParamType.String,
        ),
        'payer_email': serializeParam(
          _payerEmail,
          ParamType.String,
        ),
        'back_url': serializeParam(
          _backUrl,
          ParamType.String,
        ),
        'collector_id': serializeParam(
          _collectorId,
          ParamType.String,
        ),
        'application_id': serializeParam(
          _applicationId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'external_reference': serializeParam(
          _externalReference,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'last_modified': serializeParam(
          _lastModified,
          ParamType.String,
        ),
        'init_point': serializeParam(
          _initPoint,
          ParamType.String,
        ),
        'auto_recurring': serializeParam(
          _autoRecurring,
          ParamType.DataStruct,
        ),
        'summarized': serializeParam(
          _summarized,
          ParamType.DataStruct,
        ),
        'next_payment_date': serializeParam(
          _nextPaymentDate,
          ParamType.String,
        ),
        'payment_method_id': serializeParam(
          _paymentMethodId,
          ParamType.String,
        ),
        'payment_method_id_secondary': serializeParam(
          _paymentMethodIdSecondary,
          ParamType.String,
        ),
        'first_invoice_offset': serializeParam(
          _firstInvoiceOffset,
          ParamType.String,
        ),
        'subscription_id': serializeParam(
          _subscriptionId,
          ParamType.String,
        ),
        'owner': serializeParam(
          _owner,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubscribeResponseBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SubscribeResponseBodyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        payerId: deserializeParam(
          data['payer_id'],
          ParamType.String,
          false,
        ),
        payerEmail: deserializeParam(
          data['payer_email'],
          ParamType.String,
          false,
        ),
        backUrl: deserializeParam(
          data['back_url'],
          ParamType.String,
          false,
        ),
        collectorId: deserializeParam(
          data['collector_id'],
          ParamType.String,
          false,
        ),
        applicationId: deserializeParam(
          data['application_id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        externalReference: deserializeParam(
          data['external_reference'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        lastModified: deserializeParam(
          data['last_modified'],
          ParamType.String,
          false,
        ),
        initPoint: deserializeParam(
          data['init_point'],
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
        summarized: deserializeStructParam(
          data['summarized'],
          ParamType.DataStruct,
          false,
          structBuilder:
              SubscribeResponseBodySummarizedStruct.fromSerializableMap,
        ),
        nextPaymentDate: deserializeParam(
          data['next_payment_date'],
          ParamType.String,
          false,
        ),
        paymentMethodId: deserializeParam(
          data['payment_method_id'],
          ParamType.String,
          false,
        ),
        paymentMethodIdSecondary: deserializeParam(
          data['payment_method_id_secondary'],
          ParamType.String,
          false,
        ),
        firstInvoiceOffset: deserializeParam(
          data['first_invoice_offset'],
          ParamType.String,
          false,
        ),
        subscriptionId: deserializeParam(
          data['subscription_id'],
          ParamType.String,
          false,
        ),
        owner: deserializeParam(
          data['owner'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubscribeResponseBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubscribeResponseBodyStruct &&
        id == other.id &&
        payerId == other.payerId &&
        payerEmail == other.payerEmail &&
        backUrl == other.backUrl &&
        collectorId == other.collectorId &&
        applicationId == other.applicationId &&
        status == other.status &&
        reason == other.reason &&
        externalReference == other.externalReference &&
        dateCreated == other.dateCreated &&
        lastModified == other.lastModified &&
        initPoint == other.initPoint &&
        autoRecurring == other.autoRecurring &&
        summarized == other.summarized &&
        nextPaymentDate == other.nextPaymentDate &&
        paymentMethodId == other.paymentMethodId &&
        paymentMethodIdSecondary == other.paymentMethodIdSecondary &&
        firstInvoiceOffset == other.firstInvoiceOffset &&
        subscriptionId == other.subscriptionId &&
        owner == other.owner;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        payerId,
        payerEmail,
        backUrl,
        collectorId,
        applicationId,
        status,
        reason,
        externalReference,
        dateCreated,
        lastModified,
        initPoint,
        autoRecurring,
        summarized,
        nextPaymentDate,
        paymentMethodId,
        paymentMethodIdSecondary,
        firstInvoiceOffset,
        subscriptionId,
        owner
      ]);
}

SubscribeResponseBodyStruct createSubscribeResponseBodyStruct({
  String? id,
  String? payerId,
  String? payerEmail,
  String? backUrl,
  String? collectorId,
  String? applicationId,
  String? status,
  String? reason,
  String? externalReference,
  String? dateCreated,
  String? lastModified,
  String? initPoint,
  SubscribeRequestBodyAutoRecurringStruct? autoRecurring,
  SubscribeResponseBodySummarizedStruct? summarized,
  String? nextPaymentDate,
  String? paymentMethodId,
  String? paymentMethodIdSecondary,
  String? firstInvoiceOffset,
  String? subscriptionId,
  String? owner,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SubscribeResponseBodyStruct(
      id: id,
      payerId: payerId,
      payerEmail: payerEmail,
      backUrl: backUrl,
      collectorId: collectorId,
      applicationId: applicationId,
      status: status,
      reason: reason,
      externalReference: externalReference,
      dateCreated: dateCreated,
      lastModified: lastModified,
      initPoint: initPoint,
      autoRecurring: autoRecurring ??
          (clearUnsetFields ? SubscribeRequestBodyAutoRecurringStruct() : null),
      summarized: summarized ??
          (clearUnsetFields ? SubscribeResponseBodySummarizedStruct() : null),
      nextPaymentDate: nextPaymentDate,
      paymentMethodId: paymentMethodId,
      paymentMethodIdSecondary: paymentMethodIdSecondary,
      firstInvoiceOffset: firstInvoiceOffset,
      subscriptionId: subscriptionId,
      owner: owner,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SubscribeResponseBodyStruct? updateSubscribeResponseBodyStruct(
  SubscribeResponseBodyStruct? subscribeResponseBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    subscribeResponseBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSubscribeResponseBodyStructData(
  Map<String, dynamic> firestoreData,
  SubscribeResponseBodyStruct? subscribeResponseBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subscribeResponseBody == null) {
    return;
  }
  if (subscribeResponseBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      subscribeResponseBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subscribeResponseBodyData = getSubscribeResponseBodyFirestoreData(
      subscribeResponseBody, forFieldValue);
  final nestedData =
      subscribeResponseBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      subscribeResponseBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubscribeResponseBodyFirestoreData(
  SubscribeResponseBodyStruct? subscribeResponseBody, [
  bool forFieldValue = false,
]) {
  if (subscribeResponseBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(subscribeResponseBody.toMap());

  // Handle nested data for "auto_recurring" field.
  addSubscribeRequestBodyAutoRecurringStructData(
    firestoreData,
    subscribeResponseBody.hasAutoRecurring()
        ? subscribeResponseBody.autoRecurring
        : null,
    'auto_recurring',
    forFieldValue,
  );

  // Handle nested data for "summarized" field.
  addSubscribeResponseBodySummarizedStructData(
    firestoreData,
    subscribeResponseBody.hasSummarized()
        ? subscribeResponseBody.summarized
        : null,
    'summarized',
    forFieldValue,
  );

  // Add any Firestore field values
  subscribeResponseBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSubscribeResponseBodyListFirestoreData(
  List<SubscribeResponseBodyStruct>? subscribeResponseBodys,
) =>
    subscribeResponseBodys
        ?.map((e) => getSubscribeResponseBodyFirestoreData(e, true))
        .toList() ??
    [];
