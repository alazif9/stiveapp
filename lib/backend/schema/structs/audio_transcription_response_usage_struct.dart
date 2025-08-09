// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AudioTranscriptionResponseUsageStruct extends FFFirebaseStruct {
  AudioTranscriptionResponseUsageStruct({
    String? type,
    String? seconds,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _seconds = seconds,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "seconds" field.
  String? _seconds;
  String get seconds => _seconds ?? '';
  set seconds(String? val) => _seconds = val;

  bool hasSeconds() => _seconds != null;

  static AudioTranscriptionResponseUsageStruct fromMap(
          Map<String, dynamic> data) =>
      AudioTranscriptionResponseUsageStruct(
        type: data['type'] as String?,
        seconds: data['seconds'] as String?,
      );

  static AudioTranscriptionResponseUsageStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AudioTranscriptionResponseUsageStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'seconds': _seconds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'seconds': serializeParam(
          _seconds,
          ParamType.String,
        ),
      }.withoutNulls;

  static AudioTranscriptionResponseUsageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AudioTranscriptionResponseUsageStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        seconds: deserializeParam(
          data['seconds'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AudioTranscriptionResponseUsageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudioTranscriptionResponseUsageStruct &&
        type == other.type &&
        seconds == other.seconds;
  }

  @override
  int get hashCode => const ListEquality().hash([type, seconds]);
}

AudioTranscriptionResponseUsageStruct
    createAudioTranscriptionResponseUsageStruct({
  String? type,
  String? seconds,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        AudioTranscriptionResponseUsageStruct(
          type: type,
          seconds: seconds,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

AudioTranscriptionResponseUsageStruct?
    updateAudioTranscriptionResponseUsageStruct(
  AudioTranscriptionResponseUsageStruct? audioTranscriptionResponseUsage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        audioTranscriptionResponseUsage
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addAudioTranscriptionResponseUsageStructData(
  Map<String, dynamic> firestoreData,
  AudioTranscriptionResponseUsageStruct? audioTranscriptionResponseUsage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audioTranscriptionResponseUsage == null) {
    return;
  }
  if (audioTranscriptionResponseUsage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      audioTranscriptionResponseUsage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audioTranscriptionResponseUsageData =
      getAudioTranscriptionResponseUsageFirestoreData(
          audioTranscriptionResponseUsage, forFieldValue);
  final nestedData = audioTranscriptionResponseUsageData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      audioTranscriptionResponseUsage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudioTranscriptionResponseUsageFirestoreData(
  AudioTranscriptionResponseUsageStruct? audioTranscriptionResponseUsage, [
  bool forFieldValue = false,
]) {
  if (audioTranscriptionResponseUsage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audioTranscriptionResponseUsage.toMap());

  // Add any Firestore field values
  audioTranscriptionResponseUsage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudioTranscriptionResponseUsageListFirestoreData(
  List<AudioTranscriptionResponseUsageStruct>? audioTranscriptionResponseUsages,
) =>
    audioTranscriptionResponseUsages
        ?.map((e) => getAudioTranscriptionResponseUsageFirestoreData(e, true))
        .toList() ??
    [];
