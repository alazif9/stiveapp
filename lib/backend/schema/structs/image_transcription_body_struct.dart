// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ImageTranscriptionBodyStruct extends FFFirebaseStruct {
  ImageTranscriptionBodyStruct({
    String? file,
    bool? isOverlayRequired,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _file = file,
        _isOverlayRequired = isOverlayRequired,
        super(firestoreUtilData);

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  set file(String? val) => _file = val;

  bool hasFile() => _file != null;

  // "isOverlayRequired" field.
  bool? _isOverlayRequired;
  bool get isOverlayRequired => _isOverlayRequired ?? false;
  set isOverlayRequired(bool? val) => _isOverlayRequired = val;

  bool hasIsOverlayRequired() => _isOverlayRequired != null;

  static ImageTranscriptionBodyStruct fromMap(Map<String, dynamic> data) =>
      ImageTranscriptionBodyStruct(
        file: data['file'] as String?,
        isOverlayRequired: data['isOverlayRequired'] as bool?,
      );

  static ImageTranscriptionBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageTranscriptionBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'file': _file,
        'isOverlayRequired': _isOverlayRequired,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file': serializeParam(
          _file,
          ParamType.String,
        ),
        'isOverlayRequired': serializeParam(
          _isOverlayRequired,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ImageTranscriptionBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionBodyStruct(
        file: deserializeParam(
          data['file'],
          ParamType.String,
          false,
        ),
        isOverlayRequired: deserializeParam(
          data['isOverlayRequired'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ImageTranscriptionBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageTranscriptionBodyStruct &&
        file == other.file &&
        isOverlayRequired == other.isOverlayRequired;
  }

  @override
  int get hashCode => const ListEquality().hash([file, isOverlayRequired]);
}

ImageTranscriptionBodyStruct createImageTranscriptionBodyStruct({
  String? file,
  bool? isOverlayRequired,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageTranscriptionBodyStruct(
      file: file,
      isOverlayRequired: isOverlayRequired,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageTranscriptionBodyStruct? updateImageTranscriptionBodyStruct(
  ImageTranscriptionBodyStruct? imageTranscriptionBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageTranscriptionBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageTranscriptionBodyStructData(
  Map<String, dynamic> firestoreData,
  ImageTranscriptionBodyStruct? imageTranscriptionBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageTranscriptionBody == null) {
    return;
  }
  if (imageTranscriptionBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      imageTranscriptionBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageTranscriptionBodyData = getImageTranscriptionBodyFirestoreData(
      imageTranscriptionBody, forFieldValue);
  final nestedData =
      imageTranscriptionBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      imageTranscriptionBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageTranscriptionBodyFirestoreData(
  ImageTranscriptionBodyStruct? imageTranscriptionBody, [
  bool forFieldValue = false,
]) {
  if (imageTranscriptionBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageTranscriptionBody.toMap());

  // Add any Firestore field values
  imageTranscriptionBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageTranscriptionBodyListFirestoreData(
  List<ImageTranscriptionBodyStruct>? imageTranscriptionBodys,
) =>
    imageTranscriptionBodys
        ?.map((e) => getImageTranscriptionBodyFirestoreData(e, true))
        .toList() ??
    [];
