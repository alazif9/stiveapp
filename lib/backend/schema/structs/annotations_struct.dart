// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnotationsStruct extends FFFirebaseStruct {
  AnnotationsStruct({
    String? type,
    String? text,
    String? startIndex,
    String? endIndex,
    FileCitationStruct? fileCitation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _text = text,
        _startIndex = startIndex,
        _endIndex = endIndex,
        _fileCitation = fileCitation,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "start_index" field.
  String? _startIndex;
  String get startIndex => _startIndex ?? '';
  set startIndex(String? val) => _startIndex = val;

  bool hasStartIndex() => _startIndex != null;

  // "end_index" field.
  String? _endIndex;
  String get endIndex => _endIndex ?? '';
  set endIndex(String? val) => _endIndex = val;

  bool hasEndIndex() => _endIndex != null;

  // "file_citation" field.
  FileCitationStruct? _fileCitation;
  FileCitationStruct get fileCitation => _fileCitation ?? FileCitationStruct();
  set fileCitation(FileCitationStruct? val) => _fileCitation = val;

  void updateFileCitation(Function(FileCitationStruct) updateFn) {
    updateFn(_fileCitation ??= FileCitationStruct());
  }

  bool hasFileCitation() => _fileCitation != null;

  static AnnotationsStruct fromMap(Map<String, dynamic> data) =>
      AnnotationsStruct(
        type: data['type'] as String?,
        text: data['text'] as String?,
        startIndex: data['start_index'] as String?,
        endIndex: data['end_index'] as String?,
        fileCitation: data['file_citation'] is FileCitationStruct
            ? data['file_citation']
            : FileCitationStruct.maybeFromMap(data['file_citation']),
      );

  static AnnotationsStruct? maybeFromMap(dynamic data) => data is Map
      ? AnnotationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'text': _text,
        'start_index': _startIndex,
        'end_index': _endIndex,
        'file_citation': _fileCitation?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'start_index': serializeParam(
          _startIndex,
          ParamType.String,
        ),
        'end_index': serializeParam(
          _endIndex,
          ParamType.String,
        ),
        'file_citation': serializeParam(
          _fileCitation,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AnnotationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnnotationsStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        startIndex: deserializeParam(
          data['start_index'],
          ParamType.String,
          false,
        ),
        endIndex: deserializeParam(
          data['end_index'],
          ParamType.String,
          false,
        ),
        fileCitation: deserializeStructParam(
          data['file_citation'],
          ParamType.DataStruct,
          false,
          structBuilder: FileCitationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AnnotationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnnotationsStruct &&
        type == other.type &&
        text == other.text &&
        startIndex == other.startIndex &&
        endIndex == other.endIndex &&
        fileCitation == other.fileCitation;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([type, text, startIndex, endIndex, fileCitation]);
}

AnnotationsStruct createAnnotationsStruct({
  String? type,
  String? text,
  String? startIndex,
  String? endIndex,
  FileCitationStruct? fileCitation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnnotationsStruct(
      type: type,
      text: text,
      startIndex: startIndex,
      endIndex: endIndex,
      fileCitation:
          fileCitation ?? (clearUnsetFields ? FileCitationStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnnotationsStruct? updateAnnotationsStruct(
  AnnotationsStruct? annotations, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    annotations
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnnotationsStructData(
  Map<String, dynamic> firestoreData,
  AnnotationsStruct? annotations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (annotations == null) {
    return;
  }
  if (annotations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && annotations.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final annotationsData =
      getAnnotationsFirestoreData(annotations, forFieldValue);
  final nestedData =
      annotationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = annotations.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnnotationsFirestoreData(
  AnnotationsStruct? annotations, [
  bool forFieldValue = false,
]) {
  if (annotations == null) {
    return {};
  }
  final firestoreData = mapToFirestore(annotations.toMap());

  // Handle nested data for "file_citation" field.
  addFileCitationStructData(
    firestoreData,
    annotations.hasFileCitation() ? annotations.fileCitation : null,
    'file_citation',
    forFieldValue,
  );

  // Add any Firestore field values
  annotations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnnotationsListFirestoreData(
  List<AnnotationsStruct>? annotationss,
) =>
    annotationss?.map((e) => getAnnotationsFirestoreData(e, true)).toList() ??
    [];
