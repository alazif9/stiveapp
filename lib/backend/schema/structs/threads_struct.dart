// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ThreadsStruct extends FFFirebaseStruct {
  ThreadsStruct({
    String? id,
    String? object,
    String? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _object = object,
        _createdAt = createdAt,
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

  static ThreadsStruct fromMap(Map<String, dynamic> data) => ThreadsStruct(
        id: data['id'] as String?,
        object: data['object'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static ThreadsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ThreadsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'object': _object,
        'created_at': _createdAt,
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
      }.withoutNulls;

  static ThreadsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ThreadsStruct(
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
      );

  @override
  String toString() => 'ThreadsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThreadsStruct &&
        id == other.id &&
        object == other.object &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([id, object, createdAt]);
}

ThreadsStruct createThreadsStruct({
  String? id,
  String? object,
  String? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThreadsStruct(
      id: id,
      object: object,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ThreadsStruct? updateThreadsStruct(
  ThreadsStruct? threads, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    threads
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addThreadsStructData(
  Map<String, dynamic> firestoreData,
  ThreadsStruct? threads,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (threads == null) {
    return;
  }
  if (threads.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && threads.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final threadsData = getThreadsFirestoreData(threads, forFieldValue);
  final nestedData = threadsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = threads.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getThreadsFirestoreData(
  ThreadsStruct? threads, [
  bool forFieldValue = false,
]) {
  if (threads == null) {
    return {};
  }
  final firestoreData = mapToFirestore(threads.toMap());

  // Add any Firestore field values
  threads.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThreadsListFirestoreData(
  List<ThreadsStruct>? threadss,
) =>
    threadss?.map((e) => getThreadsFirestoreData(e, true)).toList() ?? [];
