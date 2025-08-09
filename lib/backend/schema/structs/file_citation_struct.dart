// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FileCitationStruct extends FFFirebaseStruct {
  FileCitationStruct({
    String? fileId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fileId = fileId,
        super(firestoreUtilData);

  // "file_id" field.
  String? _fileId;
  String get fileId => _fileId ?? '';
  set fileId(String? val) => _fileId = val;

  bool hasFileId() => _fileId != null;

  static FileCitationStruct fromMap(Map<String, dynamic> data) =>
      FileCitationStruct(
        fileId: data['file_id'] as String?,
      );

  static FileCitationStruct? maybeFromMap(dynamic data) => data is Map
      ? FileCitationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'file_id': _fileId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file_id': serializeParam(
          _fileId,
          ParamType.String,
        ),
      }.withoutNulls;

  static FileCitationStruct fromSerializableMap(Map<String, dynamic> data) =>
      FileCitationStruct(
        fileId: deserializeParam(
          data['file_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FileCitationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FileCitationStruct && fileId == other.fileId;
  }

  @override
  int get hashCode => const ListEquality().hash([fileId]);
}

FileCitationStruct createFileCitationStruct({
  String? fileId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FileCitationStruct(
      fileId: fileId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FileCitationStruct? updateFileCitationStruct(
  FileCitationStruct? fileCitation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fileCitation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFileCitationStructData(
  Map<String, dynamic> firestoreData,
  FileCitationStruct? fileCitation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fileCitation == null) {
    return;
  }
  if (fileCitation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fileCitation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fileCitationData =
      getFileCitationFirestoreData(fileCitation, forFieldValue);
  final nestedData =
      fileCitationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fileCitation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFileCitationFirestoreData(
  FileCitationStruct? fileCitation, [
  bool forFieldValue = false,
]) {
  if (fileCitation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fileCitation.toMap());

  // Add any Firestore field values
  fileCitation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFileCitationListFirestoreData(
  List<FileCitationStruct>? fileCitations,
) =>
    fileCitations?.map((e) => getFileCitationFirestoreData(e, true)).toList() ??
    [];
