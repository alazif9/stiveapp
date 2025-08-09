// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageTranscriptionResponseParsedResultsStruct extends FFFirebaseStruct {
  ImageTranscriptionResponseParsedResultsStruct({
    ImageTranscriptionResponseTextOverlayStruct? textOverlay,
    String? textOrientation,
    String? fileParseExitCode,
    String? parsedText,
    String? errorMessage,
    String? errorDetails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _textOverlay = textOverlay,
        _textOrientation = textOrientation,
        _fileParseExitCode = fileParseExitCode,
        _parsedText = parsedText,
        _errorMessage = errorMessage,
        _errorDetails = errorDetails,
        super(firestoreUtilData);

  // "TextOverlay" field.
  ImageTranscriptionResponseTextOverlayStruct? _textOverlay;
  ImageTranscriptionResponseTextOverlayStruct get textOverlay =>
      _textOverlay ?? ImageTranscriptionResponseTextOverlayStruct();
  set textOverlay(ImageTranscriptionResponseTextOverlayStruct? val) =>
      _textOverlay = val;

  void updateTextOverlay(
      Function(ImageTranscriptionResponseTextOverlayStruct) updateFn) {
    updateFn(_textOverlay ??= ImageTranscriptionResponseTextOverlayStruct());
  }

  bool hasTextOverlay() => _textOverlay != null;

  // "TextOrientation" field.
  String? _textOrientation;
  String get textOrientation => _textOrientation ?? '';
  set textOrientation(String? val) => _textOrientation = val;

  bool hasTextOrientation() => _textOrientation != null;

  // "FileParseExitCode" field.
  String? _fileParseExitCode;
  String get fileParseExitCode => _fileParseExitCode ?? '';
  set fileParseExitCode(String? val) => _fileParseExitCode = val;

  bool hasFileParseExitCode() => _fileParseExitCode != null;

  // "ParsedText" field.
  String? _parsedText;
  String get parsedText => _parsedText ?? '';
  set parsedText(String? val) => _parsedText = val;

  bool hasParsedText() => _parsedText != null;

  // "ErrorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  // "ErrorDetails" field.
  String? _errorDetails;
  String get errorDetails => _errorDetails ?? '';
  set errorDetails(String? val) => _errorDetails = val;

  bool hasErrorDetails() => _errorDetails != null;

  static ImageTranscriptionResponseParsedResultsStruct fromMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionResponseParsedResultsStruct(
        textOverlay:
            data['TextOverlay'] is ImageTranscriptionResponseTextOverlayStruct
                ? data['TextOverlay']
                : ImageTranscriptionResponseTextOverlayStruct.maybeFromMap(
                    data['TextOverlay']),
        textOrientation: data['TextOrientation'] as String?,
        fileParseExitCode: data['FileParseExitCode'] as String?,
        parsedText: data['ParsedText'] as String?,
        errorMessage: data['ErrorMessage'] as String?,
        errorDetails: data['ErrorDetails'] as String?,
      );

  static ImageTranscriptionResponseParsedResultsStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? ImageTranscriptionResponseParsedResultsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'TextOverlay': _textOverlay?.toMap(),
        'TextOrientation': _textOrientation,
        'FileParseExitCode': _fileParseExitCode,
        'ParsedText': _parsedText,
        'ErrorMessage': _errorMessage,
        'ErrorDetails': _errorDetails,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TextOverlay': serializeParam(
          _textOverlay,
          ParamType.DataStruct,
        ),
        'TextOrientation': serializeParam(
          _textOrientation,
          ParamType.String,
        ),
        'FileParseExitCode': serializeParam(
          _fileParseExitCode,
          ParamType.String,
        ),
        'ParsedText': serializeParam(
          _parsedText,
          ParamType.String,
        ),
        'ErrorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
        'ErrorDetails': serializeParam(
          _errorDetails,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageTranscriptionResponseParsedResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionResponseParsedResultsStruct(
        textOverlay: deserializeStructParam(
          data['TextOverlay'],
          ParamType.DataStruct,
          false,
          structBuilder:
              ImageTranscriptionResponseTextOverlayStruct.fromSerializableMap,
        ),
        textOrientation: deserializeParam(
          data['TextOrientation'],
          ParamType.String,
          false,
        ),
        fileParseExitCode: deserializeParam(
          data['FileParseExitCode'],
          ParamType.String,
          false,
        ),
        parsedText: deserializeParam(
          data['ParsedText'],
          ParamType.String,
          false,
        ),
        errorMessage: deserializeParam(
          data['ErrorMessage'],
          ParamType.String,
          false,
        ),
        errorDetails: deserializeParam(
          data['ErrorDetails'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() =>
      'ImageTranscriptionResponseParsedResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageTranscriptionResponseParsedResultsStruct &&
        textOverlay == other.textOverlay &&
        textOrientation == other.textOrientation &&
        fileParseExitCode == other.fileParseExitCode &&
        parsedText == other.parsedText &&
        errorMessage == other.errorMessage &&
        errorDetails == other.errorDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        textOverlay,
        textOrientation,
        fileParseExitCode,
        parsedText,
        errorMessage,
        errorDetails
      ]);
}

ImageTranscriptionResponseParsedResultsStruct
    createImageTranscriptionResponseParsedResultsStruct({
  ImageTranscriptionResponseTextOverlayStruct? textOverlay,
  String? textOrientation,
  String? fileParseExitCode,
  String? parsedText,
  String? errorMessage,
  String? errorDetails,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        ImageTranscriptionResponseParsedResultsStruct(
          textOverlay: textOverlay ??
              (clearUnsetFields
                  ? ImageTranscriptionResponseTextOverlayStruct()
                  : null),
          textOrientation: textOrientation,
          fileParseExitCode: fileParseExitCode,
          parsedText: parsedText,
          errorMessage: errorMessage,
          errorDetails: errorDetails,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

ImageTranscriptionResponseParsedResultsStruct?
    updateImageTranscriptionResponseParsedResultsStruct(
  ImageTranscriptionResponseParsedResultsStruct?
      imageTranscriptionResponseParsedResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        imageTranscriptionResponseParsedResults
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addImageTranscriptionResponseParsedResultsStructData(
  Map<String, dynamic> firestoreData,
  ImageTranscriptionResponseParsedResultsStruct?
      imageTranscriptionResponseParsedResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageTranscriptionResponseParsedResults == null) {
    return;
  }
  if (imageTranscriptionResponseParsedResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      imageTranscriptionResponseParsedResults
          .firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageTranscriptionResponseParsedResultsData =
      getImageTranscriptionResponseParsedResultsFirestoreData(
          imageTranscriptionResponseParsedResults, forFieldValue);
  final nestedData = imageTranscriptionResponseParsedResultsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      imageTranscriptionResponseParsedResults.firestoreUtilData.create ||
          clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageTranscriptionResponseParsedResultsFirestoreData(
  ImageTranscriptionResponseParsedResultsStruct?
      imageTranscriptionResponseParsedResults, [
  bool forFieldValue = false,
]) {
  if (imageTranscriptionResponseParsedResults == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(imageTranscriptionResponseParsedResults.toMap());

  // Handle nested data for "TextOverlay" field.
  addImageTranscriptionResponseTextOverlayStructData(
    firestoreData,
    imageTranscriptionResponseParsedResults.hasTextOverlay()
        ? imageTranscriptionResponseParsedResults.textOverlay
        : null,
    'TextOverlay',
    forFieldValue,
  );

  // Add any Firestore field values
  imageTranscriptionResponseParsedResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>>
    getImageTranscriptionResponseParsedResultsListFirestoreData(
  List<ImageTranscriptionResponseParsedResultsStruct>?
      imageTranscriptionResponseParsedResultss,
) =>
        imageTranscriptionResponseParsedResultss
            ?.map((e) =>
                getImageTranscriptionResponseParsedResultsFirestoreData(
                    e, true))
            .toList() ??
        [];
