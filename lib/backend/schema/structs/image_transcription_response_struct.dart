// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageTranscriptionResponseStruct extends FFFirebaseStruct {
  ImageTranscriptionResponseStruct({
    List<ImageTranscriptionResponseParsedResultsStruct>? parsedResults,
    String? oCRExitCode,
    String? isErroredOnProcessing,
    String? processingTimeInMilliseconds,
    String? searchablePDFURL,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _parsedResults = parsedResults,
        _oCRExitCode = oCRExitCode,
        _isErroredOnProcessing = isErroredOnProcessing,
        _processingTimeInMilliseconds = processingTimeInMilliseconds,
        _searchablePDFURL = searchablePDFURL,
        super(firestoreUtilData);

  // "ParsedResults" field.
  List<ImageTranscriptionResponseParsedResultsStruct>? _parsedResults;
  List<ImageTranscriptionResponseParsedResultsStruct> get parsedResults =>
      _parsedResults ?? const [];
  set parsedResults(List<ImageTranscriptionResponseParsedResultsStruct>? val) =>
      _parsedResults = val;

  void updateParsedResults(
      Function(List<ImageTranscriptionResponseParsedResultsStruct>) updateFn) {
    updateFn(_parsedResults ??= []);
  }

  bool hasParsedResults() => _parsedResults != null;

  // "OCRExitCode" field.
  String? _oCRExitCode;
  String get oCRExitCode => _oCRExitCode ?? '';
  set oCRExitCode(String? val) => _oCRExitCode = val;

  bool hasOCRExitCode() => _oCRExitCode != null;

  // "IsErroredOnProcessing" field.
  String? _isErroredOnProcessing;
  String get isErroredOnProcessing => _isErroredOnProcessing ?? '';
  set isErroredOnProcessing(String? val) => _isErroredOnProcessing = val;

  bool hasIsErroredOnProcessing() => _isErroredOnProcessing != null;

  // "ProcessingTimeInMilliseconds" field.
  String? _processingTimeInMilliseconds;
  String get processingTimeInMilliseconds =>
      _processingTimeInMilliseconds ?? '';
  set processingTimeInMilliseconds(String? val) =>
      _processingTimeInMilliseconds = val;

  bool hasProcessingTimeInMilliseconds() =>
      _processingTimeInMilliseconds != null;

  // "SearchablePDFURL" field.
  String? _searchablePDFURL;
  String get searchablePDFURL => _searchablePDFURL ?? '';
  set searchablePDFURL(String? val) => _searchablePDFURL = val;

  bool hasSearchablePDFURL() => _searchablePDFURL != null;

  static ImageTranscriptionResponseStruct fromMap(Map<String, dynamic> data) =>
      ImageTranscriptionResponseStruct(
        parsedResults: getStructList(
          data['ParsedResults'],
          ImageTranscriptionResponseParsedResultsStruct.fromMap,
        ),
        oCRExitCode: data['OCRExitCode'] as String?,
        isErroredOnProcessing: data['IsErroredOnProcessing'] as String?,
        processingTimeInMilliseconds:
            data['ProcessingTimeInMilliseconds'] as String?,
        searchablePDFURL: data['SearchablePDFURL'] as String?,
      );

  static ImageTranscriptionResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ImageTranscriptionResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ParsedResults': _parsedResults?.map((e) => e.toMap()).toList(),
        'OCRExitCode': _oCRExitCode,
        'IsErroredOnProcessing': _isErroredOnProcessing,
        'ProcessingTimeInMilliseconds': _processingTimeInMilliseconds,
        'SearchablePDFURL': _searchablePDFURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ParsedResults': serializeParam(
          _parsedResults,
          ParamType.DataStruct,
          isList: true,
        ),
        'OCRExitCode': serializeParam(
          _oCRExitCode,
          ParamType.String,
        ),
        'IsErroredOnProcessing': serializeParam(
          _isErroredOnProcessing,
          ParamType.String,
        ),
        'ProcessingTimeInMilliseconds': serializeParam(
          _processingTimeInMilliseconds,
          ParamType.String,
        ),
        'SearchablePDFURL': serializeParam(
          _searchablePDFURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageTranscriptionResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ImageTranscriptionResponseStruct(
        parsedResults: deserializeStructParam<
            ImageTranscriptionResponseParsedResultsStruct>(
          data['ParsedResults'],
          ParamType.DataStruct,
          true,
          structBuilder:
              ImageTranscriptionResponseParsedResultsStruct.fromSerializableMap,
        ),
        oCRExitCode: deserializeParam(
          data['OCRExitCode'],
          ParamType.String,
          false,
        ),
        isErroredOnProcessing: deserializeParam(
          data['IsErroredOnProcessing'],
          ParamType.String,
          false,
        ),
        processingTimeInMilliseconds: deserializeParam(
          data['ProcessingTimeInMilliseconds'],
          ParamType.String,
          false,
        ),
        searchablePDFURL: deserializeParam(
          data['SearchablePDFURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageTranscriptionResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ImageTranscriptionResponseStruct &&
        listEquality.equals(parsedResults, other.parsedResults) &&
        oCRExitCode == other.oCRExitCode &&
        isErroredOnProcessing == other.isErroredOnProcessing &&
        processingTimeInMilliseconds == other.processingTimeInMilliseconds &&
        searchablePDFURL == other.searchablePDFURL;
  }

  @override
  int get hashCode => const ListEquality().hash([
        parsedResults,
        oCRExitCode,
        isErroredOnProcessing,
        processingTimeInMilliseconds,
        searchablePDFURL
      ]);
}

ImageTranscriptionResponseStruct createImageTranscriptionResponseStruct({
  String? oCRExitCode,
  String? isErroredOnProcessing,
  String? processingTimeInMilliseconds,
  String? searchablePDFURL,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageTranscriptionResponseStruct(
      oCRExitCode: oCRExitCode,
      isErroredOnProcessing: isErroredOnProcessing,
      processingTimeInMilliseconds: processingTimeInMilliseconds,
      searchablePDFURL: searchablePDFURL,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageTranscriptionResponseStruct? updateImageTranscriptionResponseStruct(
  ImageTranscriptionResponseStruct? imageTranscriptionResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageTranscriptionResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageTranscriptionResponseStructData(
  Map<String, dynamic> firestoreData,
  ImageTranscriptionResponseStruct? imageTranscriptionResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageTranscriptionResponse == null) {
    return;
  }
  if (imageTranscriptionResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      imageTranscriptionResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageTranscriptionResponseData =
      getImageTranscriptionResponseFirestoreData(
          imageTranscriptionResponse, forFieldValue);
  final nestedData = imageTranscriptionResponseData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      imageTranscriptionResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageTranscriptionResponseFirestoreData(
  ImageTranscriptionResponseStruct? imageTranscriptionResponse, [
  bool forFieldValue = false,
]) {
  if (imageTranscriptionResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageTranscriptionResponse.toMap());

  // Add any Firestore field values
  imageTranscriptionResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageTranscriptionResponseListFirestoreData(
  List<ImageTranscriptionResponseStruct>? imageTranscriptionResponses,
) =>
    imageTranscriptionResponses
        ?.map((e) => getImageTranscriptionResponseFirestoreData(e, true))
        .toList() ??
    [];
