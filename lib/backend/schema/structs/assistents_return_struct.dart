// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AssistentsReturnStruct extends FFFirebaseStruct {
  AssistentsReturnStruct({
    String? id,
    String? object,
    String? createdAt,
    String? assistantId,
    String? threadId,
    String? status,
    String? startedAt,
    String? expiresAt,
    String? cancelledAt,
    String? failedAt,
    String? completedAt,
    String? requiredAction,
    String? lastError,
    String? model,
    String? instructions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _object = object,
        _createdAt = createdAt,
        _assistantId = assistantId,
        _threadId = threadId,
        _status = status,
        _startedAt = startedAt,
        _expiresAt = expiresAt,
        _cancelledAt = cancelledAt,
        _failedAt = failedAt,
        _completedAt = completedAt,
        _requiredAction = requiredAction,
        _lastError = lastError,
        _model = model,
        _instructions = instructions,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  set object(String? val) => _object = val;

  bool hasObject() => _object != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "assistant_id" field.
  String? _assistantId;
  String get assistantId => _assistantId ?? '';
  set assistantId(String? val) => _assistantId = val;

  bool hasAssistantId() => _assistantId != null;

  // "thread_id" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  set threadId(String? val) => _threadId = val;

  bool hasThreadId() => _threadId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "started_at" field.
  String? _startedAt;
  String get startedAt => _startedAt ?? '';
  set startedAt(String? val) => _startedAt = val;

  bool hasStartedAt() => _startedAt != null;

  // "expires_at" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "cancelled_at" field.
  String? _cancelledAt;
  String get cancelledAt => _cancelledAt ?? '';
  set cancelledAt(String? val) => _cancelledAt = val;

  bool hasCancelledAt() => _cancelledAt != null;

  // "failed_at" field.
  String? _failedAt;
  String get failedAt => _failedAt ?? '';
  set failedAt(String? val) => _failedAt = val;

  bool hasFailedAt() => _failedAt != null;

  // "completed_at" field.
  String? _completedAt;
  String get completedAt => _completedAt ?? '';
  set completedAt(String? val) => _completedAt = val;

  bool hasCompletedAt() => _completedAt != null;

  // "required_action" field.
  String? _requiredAction;
  String get requiredAction => _requiredAction ?? '';
  set requiredAction(String? val) => _requiredAction = val;

  bool hasRequiredAction() => _requiredAction != null;

  // "last_error" field.
  String? _lastError;
  String get lastError => _lastError ?? '';
  set lastError(String? val) => _lastError = val;

  bool hasLastError() => _lastError != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  set instructions(String? val) => _instructions = val;

  bool hasInstructions() => _instructions != null;

  static AssistentsReturnStruct fromMap(Map<String, dynamic> data) =>
      AssistentsReturnStruct(
        id: data['id'] as String?,
        object: data['object'] as String?,
        createdAt: data['created_at'] as String?,
        assistantId: data['assistant_id'] as String?,
        threadId: data['thread_id'] as String?,
        status: data['status'] as String?,
        startedAt: data['started_at'] as String?,
        expiresAt: data['expires_at'] as String?,
        cancelledAt: data['cancelled_at'] as String?,
        failedAt: data['failed_at'] as String?,
        completedAt: data['completed_at'] as String?,
        requiredAction: data['required_action'] as String?,
        lastError: data['last_error'] as String?,
        model: data['model'] as String?,
        instructions: data['instructions'] as String?,
      );

  static AssistentsReturnStruct? maybeFromMap(dynamic data) => data is Map
      ? AssistentsReturnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'object': _object,
        'created_at': _createdAt,
        'assistant_id': _assistantId,
        'thread_id': _threadId,
        'status': _status,
        'started_at': _startedAt,
        'expires_at': _expiresAt,
        'cancelled_at': _cancelledAt,
        'failed_at': _failedAt,
        'completed_at': _completedAt,
        'required_action': _requiredAction,
        'last_error': _lastError,
        'model': _model,
        'instructions': _instructions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'object': serializeParam(
          _object,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'assistant_id': serializeParam(
          _assistantId,
          ParamType.String,
        ),
        'thread_id': serializeParam(
          _threadId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'expires_at': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'cancelled_at': serializeParam(
          _cancelledAt,
          ParamType.String,
        ),
        'failed_at': serializeParam(
          _failedAt,
          ParamType.String,
        ),
        'completed_at': serializeParam(
          _completedAt,
          ParamType.String,
        ),
        'required_action': serializeParam(
          _requiredAction,
          ParamType.String,
        ),
        'last_error': serializeParam(
          _lastError,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'instructions': serializeParam(
          _instructions,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssistentsReturnStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssistentsReturnStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        object: deserializeParam(
          data['object'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        assistantId: deserializeParam(
          data['assistant_id'],
          ParamType.String,
          false,
        ),
        threadId: deserializeParam(
          data['thread_id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expires_at'],
          ParamType.String,
          false,
        ),
        cancelledAt: deserializeParam(
          data['cancelled_at'],
          ParamType.String,
          false,
        ),
        failedAt: deserializeParam(
          data['failed_at'],
          ParamType.String,
          false,
        ),
        completedAt: deserializeParam(
          data['completed_at'],
          ParamType.String,
          false,
        ),
        requiredAction: deserializeParam(
          data['required_action'],
          ParamType.String,
          false,
        ),
        lastError: deserializeParam(
          data['last_error'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        instructions: deserializeParam(
          data['instructions'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssistentsReturnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssistentsReturnStruct &&
        id == other.id &&
        object == other.object &&
        createdAt == other.createdAt &&
        assistantId == other.assistantId &&
        threadId == other.threadId &&
        status == other.status &&
        startedAt == other.startedAt &&
        expiresAt == other.expiresAt &&
        cancelledAt == other.cancelledAt &&
        failedAt == other.failedAt &&
        completedAt == other.completedAt &&
        requiredAction == other.requiredAction &&
        lastError == other.lastError &&
        model == other.model &&
        instructions == other.instructions;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        object,
        createdAt,
        assistantId,
        threadId,
        status,
        startedAt,
        expiresAt,
        cancelledAt,
        failedAt,
        completedAt,
        requiredAction,
        lastError,
        model,
        instructions
      ]);
}

AssistentsReturnStruct createAssistentsReturnStruct({
  String? id,
  String? object,
  String? createdAt,
  String? assistantId,
  String? threadId,
  String? status,
  String? startedAt,
  String? expiresAt,
  String? cancelledAt,
  String? failedAt,
  String? completedAt,
  String? requiredAction,
  String? lastError,
  String? model,
  String? instructions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AssistentsReturnStruct(
      id: id,
      object: object,
      createdAt: createdAt,
      assistantId: assistantId,
      threadId: threadId,
      status: status,
      startedAt: startedAt,
      expiresAt: expiresAt,
      cancelledAt: cancelledAt,
      failedAt: failedAt,
      completedAt: completedAt,
      requiredAction: requiredAction,
      lastError: lastError,
      model: model,
      instructions: instructions,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AssistentsReturnStruct? updateAssistentsReturnStruct(
  AssistentsReturnStruct? assistentsReturn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    assistentsReturn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAssistentsReturnStructData(
  Map<String, dynamic> firestoreData,
  AssistentsReturnStruct? assistentsReturn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (assistentsReturn == null) {
    return;
  }
  if (assistentsReturn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && assistentsReturn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final assistentsReturnData =
      getAssistentsReturnFirestoreData(assistentsReturn, forFieldValue);
  final nestedData =
      assistentsReturnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = assistentsReturn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAssistentsReturnFirestoreData(
  AssistentsReturnStruct? assistentsReturn, [
  bool forFieldValue = false,
]) {
  if (assistentsReturn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(assistentsReturn.toMap());

  // Add any Firestore field values
  assistentsReturn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAssistentsReturnListFirestoreData(
  List<AssistentsReturnStruct>? assistentsReturns,
) =>
    assistentsReturns
        ?.map((e) => getAssistentsReturnFirestoreData(e, true))
        .toList() ??
    [];
