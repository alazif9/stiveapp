// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AssistentStruct extends FFFirebaseStruct {
  AssistentStruct({
    String? assistantId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _assistantId = assistantId,
        super(firestoreUtilData);

  // "assistant_id" field.
  String? _assistantId;
  String get assistantId => _assistantId ?? '';
  set assistantId(String? val) => _assistantId = val;

  bool hasAssistantId() => _assistantId != null;

  static AssistentStruct fromMap(Map<String, dynamic> data) => AssistentStruct(
        assistantId: data['assistant_id'] as String?,
      );

  static AssistentStruct? maybeFromMap(dynamic data) => data is Map
      ? AssistentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assistant_id': _assistantId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assistant_id': serializeParam(
          _assistantId,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssistentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssistentStruct(
        assistantId: deserializeParam(
          data['assistant_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssistentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssistentStruct && assistantId == other.assistantId;
  }

  @override
  int get hashCode => const ListEquality().hash([assistantId]);
}

AssistentStruct createAssistentStruct({
  String? assistantId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AssistentStruct(
      assistantId: assistantId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AssistentStruct? updateAssistentStruct(
  AssistentStruct? assistent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    assistent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAssistentStructData(
  Map<String, dynamic> firestoreData,
  AssistentStruct? assistent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (assistent == null) {
    return;
  }
  if (assistent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && assistent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final assistentData = getAssistentFirestoreData(assistent, forFieldValue);
  final nestedData = assistentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = assistent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAssistentFirestoreData(
  AssistentStruct? assistent, [
  bool forFieldValue = false,
]) {
  if (assistent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(assistent.toMap());

  // Add any Firestore field values
  assistent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAssistentListFirestoreData(
  List<AssistentStruct>? assistents,
) =>
    assistents?.map((e) => getAssistentFirestoreData(e, true)).toList() ?? [];
