// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensageReturnContentStruct extends FFFirebaseStruct {
  MensageReturnContentStruct({
    String? type,
    TextStruct? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _text = text,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "text" field.
  TextStruct? _text;
  TextStruct get text => _text ?? TextStruct();
  set text(TextStruct? val) => _text = val;

  void updateText(Function(TextStruct) updateFn) {
    updateFn(_text ??= TextStruct());
  }

  bool hasText() => _text != null;

  static MensageReturnContentStruct fromMap(Map<String, dynamic> data) =>
      MensageReturnContentStruct(
        type: data['type'] as String?,
        text: data['text'] is TextStruct
            ? data['text']
            : TextStruct.maybeFromMap(data['text']),
      );

  static MensageReturnContentStruct? maybeFromMap(dynamic data) => data is Map
      ? MensageReturnContentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'text': _text?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MensageReturnContentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MensageReturnContentStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        text: deserializeStructParam(
          data['text'],
          ParamType.DataStruct,
          false,
          structBuilder: TextStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MensageReturnContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MensageReturnContentStruct &&
        type == other.type &&
        text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([type, text]);
}

MensageReturnContentStruct createMensageReturnContentStruct({
  String? type,
  TextStruct? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MensageReturnContentStruct(
      type: type,
      text: text ?? (clearUnsetFields ? TextStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MensageReturnContentStruct? updateMensageReturnContentStruct(
  MensageReturnContentStruct? mensageReturnContent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mensageReturnContent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMensageReturnContentStructData(
  Map<String, dynamic> firestoreData,
  MensageReturnContentStruct? mensageReturnContent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mensageReturnContent == null) {
    return;
  }
  if (mensageReturnContent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mensageReturnContent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mensageReturnContentData =
      getMensageReturnContentFirestoreData(mensageReturnContent, forFieldValue);
  final nestedData =
      mensageReturnContentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      mensageReturnContent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMensageReturnContentFirestoreData(
  MensageReturnContentStruct? mensageReturnContent, [
  bool forFieldValue = false,
]) {
  if (mensageReturnContent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mensageReturnContent.toMap());

  // Handle nested data for "text" field.
  addTextStructData(
    firestoreData,
    mensageReturnContent.hasText() ? mensageReturnContent.text : null,
    'text',
    forFieldValue,
  );

  // Add any Firestore field values
  mensageReturnContent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMensageReturnContentListFirestoreData(
  List<MensageReturnContentStruct>? mensageReturnContents,
) =>
    mensageReturnContents
        ?.map((e) => getMensageReturnContentFirestoreData(e, true))
        .toList() ??
    [];
