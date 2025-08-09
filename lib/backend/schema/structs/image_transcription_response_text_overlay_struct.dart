// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageTranscriptionResponseTextOverlayStruct extends FFFirebaseStruct {
  ImageTranscriptionResponseTextOverlayStruct({
    List<String>? lines,
    String? hasOverlay,
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lines = lines,
        _hasOverlay = hasOverlay,
        _message = message,
        super(firestoreUtilData);

  // "Lines" field.
  List<String>? _lines;
  List<String> get lines => _lines ?? const [];
  set lines(List<String>? val) => _lines = val;

  void updateLines(Function(List<String>) updateFn) {
    updateFn(_lines ??= []);
  }

  bool hasLines() => _lines != null;

  // "HasOverlay" field.
  String? _hasOverlay;
  String get hasOverlay => _hasOverlay ?? '';
  set hasOverlay(String? val) => _hasOverlay = val;

  bool hasHasOverlay() => _hasOverlay != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ImageTranscriptionResponseTextOverlayStruct fromMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionResponseTextOverlayStruct(
        lines: getDataList(data['Lines']),
        hasOverlay: data['HasOverlay'] as String?,
        message: data['Message'] as String?,
      );

  static ImageTranscriptionResponseTextOverlayStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? ImageTranscriptionResponseTextOverlayStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'Lines': _lines,
        'HasOverlay': _hasOverlay,
        'Message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Lines': serializeParam(
          _lines,
          ParamType.String,
          isList: true,
        ),
        'HasOverlay': serializeParam(
          _hasOverlay,
          ParamType.String,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageTranscriptionResponseTextOverlayStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionResponseTextOverlayStruct(
        lines: deserializeParam<String>(
          data['Lines'],
          ParamType.String,
          true,
        ),
        hasOverlay: deserializeParam(
          data['HasOverlay'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() =>
      'ImageTranscriptionResponseTextOverlayStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ImageTranscriptionResponseTextOverlayStruct &&
        listEquality.equals(lines, other.lines) &&
        hasOverlay == other.hasOverlay &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([lines, hasOverlay, message]);
}

ImageTranscriptionResponseTextOverlayStruct
    createImageTranscriptionResponseTextOverlayStruct({
  String? hasOverlay,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        ImageTranscriptionResponseTextOverlayStruct(
          hasOverlay: hasOverlay,
          message: message,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

ImageTranscriptionResponseTextOverlayStruct?
    updateImageTranscriptionResponseTextOverlayStruct(
  ImageTranscriptionResponseTextOverlayStruct?
      imageTranscriptionResponseTextOverlay, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        imageTranscriptionResponseTextOverlay
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addImageTranscriptionResponseTextOverlayStructData(
  Map<String, dynamic> firestoreData,
  ImageTranscriptionResponseTextOverlayStruct?
      imageTranscriptionResponseTextOverlay,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageTranscriptionResponseTextOverlay == null) {
    return;
  }
  if (imageTranscriptionResponseTextOverlay.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      imageTranscriptionResponseTextOverlay.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageTranscriptionResponseTextOverlayData =
      getImageTranscriptionResponseTextOverlayFirestoreData(
          imageTranscriptionResponseTextOverlay, forFieldValue);
  final nestedData = imageTranscriptionResponseTextOverlayData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      imageTranscriptionResponseTextOverlay.firestoreUtilData.create ||
          clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageTranscriptionResponseTextOverlayFirestoreData(
  ImageTranscriptionResponseTextOverlayStruct?
      imageTranscriptionResponseTextOverlay, [
  bool forFieldValue = false,
]) {
  if (imageTranscriptionResponseTextOverlay == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(imageTranscriptionResponseTextOverlay.toMap());

  // Add any Firestore field values
  imageTranscriptionResponseTextOverlay.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>>
    getImageTranscriptionResponseTextOverlayListFirestoreData(
  List<ImageTranscriptionResponseTextOverlayStruct>?
      imageTranscriptionResponseTextOverlays,
) =>
        imageTranscriptionResponseTextOverlays
            ?.map((e) =>
                getImageTranscriptionResponseTextOverlayFirestoreData(e, true))
            .toList() ??
        [];
