// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageReturnStruct extends FFFirebaseStruct {
  MessageReturnStruct({
    String? id,
    String? object,
    String? assistantId,
    String? threadId,
    String? runId,
    String? role,
    List<MensageReturnContentStruct>? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _object = object,
        _assistantId = assistantId,
        _threadId = threadId,
        _runId = runId,
        _role = role,
        _content = content,
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

  // "run_id" field.
  String? _runId;
  String get runId => _runId ?? '';
  set runId(String? val) => _runId = val;

  bool hasRunId() => _runId != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  List<MensageReturnContentStruct>? _content;
  List<MensageReturnContentStruct> get content => _content ?? const [];
  set content(List<MensageReturnContentStruct>? val) => _content = val;

  void updateContent(Function(List<MensageReturnContentStruct>) updateFn) {
    updateFn(_content ??= []);
  }

  bool hasContent() => _content != null;

  static MessageReturnStruct fromMap(Map<String, dynamic> data) =>
      MessageReturnStruct(
        id: data['id'] as String?,
        object: data['object'] as String?,
        assistantId: data['assistant_id'] as String?,
        threadId: data['thread_id'] as String?,
        runId: data['run_id'] as String?,
        role: data['role'] as String?,
        content: getStructList(
          data['content'],
          MensageReturnContentStruct.fromMap,
        ),
      );

  static MessageReturnStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageReturnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'object': _object,
        'assistant_id': _assistantId,
        'thread_id': _threadId,
        'run_id': _runId,
        'role': _role,
        'content': _content?.map((e) => e.toMap()).toList(),
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
        'assistant_id': serializeParam(
          _assistantId,
          ParamType.String,
        ),
        'thread_id': serializeParam(
          _threadId,
          ParamType.String,
        ),
        'run_id': serializeParam(
          _runId,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MessageReturnStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageReturnStruct(
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
        runId: deserializeParam(
          data['run_id'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeStructParam<MensageReturnContentStruct>(
          data['content'],
          ParamType.DataStruct,
          true,
          structBuilder: MensageReturnContentStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MessageReturnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MessageReturnStruct &&
        id == other.id &&
        object == other.object &&
        assistantId == other.assistantId &&
        threadId == other.threadId &&
        runId == other.runId &&
        role == other.role &&
        listEquality.equals(content, other.content);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, object, assistantId, threadId, runId, role, content]);
}

MessageReturnStruct createMessageReturnStruct({
  String? id,
  String? object,
  String? assistantId,
  String? threadId,
  String? runId,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageReturnStruct(
      id: id,
      object: object,
      assistantId: assistantId,
      threadId: threadId,
      runId: runId,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageReturnStruct? updateMessageReturnStruct(
  MessageReturnStruct? messageReturn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageReturn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageReturnStructData(
  Map<String, dynamic> firestoreData,
  MessageReturnStruct? messageReturn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageReturn == null) {
    return;
  }
  if (messageReturn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageReturn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageReturnData =
      getMessageReturnFirestoreData(messageReturn, forFieldValue);
  final nestedData =
      messageReturnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageReturn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageReturnFirestoreData(
  MessageReturnStruct? messageReturn, [
  bool forFieldValue = false,
]) {
  if (messageReturn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageReturn.toMap());

  // Add any Firestore field values
  messageReturn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageReturnListFirestoreData(
  List<MessageReturnStruct>? messageReturns,
) =>
    messageReturns
        ?.map((e) => getMessageReturnFirestoreData(e, true))
        .toList() ??
    [];
