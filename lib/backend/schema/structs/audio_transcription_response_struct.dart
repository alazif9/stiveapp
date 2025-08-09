// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioTranscriptionResponseStruct extends FFFirebaseStruct {
  AudioTranscriptionResponseStruct({
    String? text,
    AudioTranscriptionResponseUsageStruct? usage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _text = text,
        _usage = usage,
        super(firestoreUtilData);

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "usage" field.
  AudioTranscriptionResponseUsageStruct? _usage;
  AudioTranscriptionResponseUsageStruct get usage =>
      _usage ?? AudioTranscriptionResponseUsageStruct();
  set usage(AudioTranscriptionResponseUsageStruct? val) => _usage = val;

  void updateUsage(Function(AudioTranscriptionResponseUsageStruct) updateFn) {
    updateFn(_usage ??= AudioTranscriptionResponseUsageStruct());
  }

  bool hasUsage() => _usage != null;

  static AudioTranscriptionResponseStruct fromMap(Map<String, dynamic> data) =>
      AudioTranscriptionResponseStruct(
        text: data['text'] as String?,
        usage: data['usage'] is AudioTranscriptionResponseUsageStruct
            ? data['usage']
            : AudioTranscriptionResponseUsageStruct.maybeFromMap(data['usage']),
      );

  static AudioTranscriptionResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AudioTranscriptionResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'usage': _usage?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'usage': serializeParam(
          _usage,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AudioTranscriptionResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AudioTranscriptionResponseStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        usage: deserializeStructParam(
          data['usage'],
          ParamType.DataStruct,
          false,
          structBuilder:
              AudioTranscriptionResponseUsageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AudioTranscriptionResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudioTranscriptionResponseStruct &&
        text == other.text &&
        usage == other.usage;
  }

  @override
  int get hashCode => const ListEquality().hash([text, usage]);
}

AudioTranscriptionResponseStruct createAudioTranscriptionResponseStruct({
  String? text,
  AudioTranscriptionResponseUsageStruct? usage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AudioTranscriptionResponseStruct(
      text: text,
      usage: usage ??
          (clearUnsetFields ? AudioTranscriptionResponseUsageStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AudioTranscriptionResponseStruct? updateAudioTranscriptionResponseStruct(
  AudioTranscriptionResponseStruct? audioTranscriptionResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    audioTranscriptionResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAudioTranscriptionResponseStructData(
  Map<String, dynamic> firestoreData,
  AudioTranscriptionResponseStruct? audioTranscriptionResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audioTranscriptionResponse == null) {
    return;
  }
  if (audioTranscriptionResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      audioTranscriptionResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audioTranscriptionResponseData =
      getAudioTranscriptionResponseFirestoreData(
          audioTranscriptionResponse, forFieldValue);
  final nestedData = audioTranscriptionResponseData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      audioTranscriptionResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudioTranscriptionResponseFirestoreData(
  AudioTranscriptionResponseStruct? audioTranscriptionResponse, [
  bool forFieldValue = false,
]) {
  if (audioTranscriptionResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audioTranscriptionResponse.toMap());

  // Handle nested data for "usage" field.
  addAudioTranscriptionResponseUsageStructData(
    firestoreData,
    audioTranscriptionResponse.hasUsage()
        ? audioTranscriptionResponse.usage
        : null,
    'usage',
    forFieldValue,
  );

  // Add any Firestore field values
  audioTranscriptionResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudioTranscriptionResponseListFirestoreData(
  List<AudioTranscriptionResponseStruct>? audioTranscriptionResponses,
) =>
    audioTranscriptionResponses
        ?.map((e) => getAudioTranscriptionResponseFirestoreData(e, true))
        .toList() ??
    [];
