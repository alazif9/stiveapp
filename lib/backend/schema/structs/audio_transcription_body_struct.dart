// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AudioTranscriptionBodyStruct extends FFFirebaseStruct {
  AudioTranscriptionBodyStruct({
    String? file,
    String? model,
    String? language,
    String? responseFormat,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _file = file,
        _model = model,
        _language = language,
        _responseFormat = responseFormat,
        super(firestoreUtilData);

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  set file(String? val) => _file = val;

  bool hasFile() => _file != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "response_format" field.
  String? _responseFormat;
  String get responseFormat => _responseFormat ?? '';
  set responseFormat(String? val) => _responseFormat = val;

  bool hasResponseFormat() => _responseFormat != null;

  static AudioTranscriptionBodyStruct fromMap(Map<String, dynamic> data) =>
      AudioTranscriptionBodyStruct(
        file: data['file'] as String?,
        model: data['model'] as String?,
        language: data['language'] as String?,
        responseFormat: data['response_format'] as String?,
      );

  static AudioTranscriptionBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? AudioTranscriptionBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'file': _file,
        'model': _model,
        'language': _language,
        'response_format': _responseFormat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file': serializeParam(
          _file,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'response_format': serializeParam(
          _responseFormat,
          ParamType.String,
        ),
      }.withoutNulls;

  static AudioTranscriptionBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AudioTranscriptionBodyStruct(
        file: deserializeParam(
          data['file'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        responseFormat: deserializeParam(
          data['response_format'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AudioTranscriptionBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudioTranscriptionBodyStruct &&
        file == other.file &&
        model == other.model &&
        language == other.language &&
        responseFormat == other.responseFormat;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([file, model, language, responseFormat]);
}

AudioTranscriptionBodyStruct createAudioTranscriptionBodyStruct({
  String? file,
  String? model,
  String? language,
  String? responseFormat,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AudioTranscriptionBodyStruct(
      file: file,
      model: model,
      language: language,
      responseFormat: responseFormat,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AudioTranscriptionBodyStruct? updateAudioTranscriptionBodyStruct(
  AudioTranscriptionBodyStruct? audioTranscriptionBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    audioTranscriptionBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAudioTranscriptionBodyStructData(
  Map<String, dynamic> firestoreData,
  AudioTranscriptionBodyStruct? audioTranscriptionBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audioTranscriptionBody == null) {
    return;
  }
  if (audioTranscriptionBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      audioTranscriptionBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audioTranscriptionBodyData = getAudioTranscriptionBodyFirestoreData(
      audioTranscriptionBody, forFieldValue);
  final nestedData =
      audioTranscriptionBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      audioTranscriptionBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudioTranscriptionBodyFirestoreData(
  AudioTranscriptionBodyStruct? audioTranscriptionBody, [
  bool forFieldValue = false,
]) {
  if (audioTranscriptionBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audioTranscriptionBody.toMap());

  // Add any Firestore field values
  audioTranscriptionBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudioTranscriptionBodyListFirestoreData(
  List<AudioTranscriptionBodyStruct>? audioTranscriptionBodys,
) =>
    audioTranscriptionBodys
        ?.map((e) => getAudioTranscriptionBodyFirestoreData(e, true))
        .toList() ??
    [];
