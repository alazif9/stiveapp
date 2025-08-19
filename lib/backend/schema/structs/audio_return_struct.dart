// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AudioReturnStruct extends FFFirebaseStruct {
  AudioReturnStruct({
    String? audio,
    int? status,
    String? ced,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _audio = audio,
        _status = status,
        _ced = ced,
        super(firestoreUtilData);

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  set audio(String? val) => _audio = val;

  bool hasAudio() => _audio != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "ced" field.
  String? _ced;
  String get ced => _ced ?? '';
  set ced(String? val) => _ced = val;

  bool hasCed() => _ced != null;

  static AudioReturnStruct fromMap(Map<String, dynamic> data) =>
      AudioReturnStruct(
        audio: data['audio'] as String?,
        status: castToType<int>(data['status']),
        ced: data['ced'] as String?,
      );

  static AudioReturnStruct? maybeFromMap(dynamic data) => data is Map
      ? AudioReturnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'audio': _audio,
        'status': _status,
        'ced': _ced,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'audio': serializeParam(
          _audio,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'ced': serializeParam(
          _ced,
          ParamType.String,
        ),
      }.withoutNulls;

  static AudioReturnStruct fromSerializableMap(Map<String, dynamic> data) =>
      AudioReturnStruct(
        audio: deserializeParam(
          data['audio'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        ced: deserializeParam(
          data['ced'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AudioReturnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudioReturnStruct &&
        audio == other.audio &&
        status == other.status &&
        ced == other.ced;
  }

  @override
  int get hashCode => const ListEquality().hash([audio, status, ced]);
}

AudioReturnStruct createAudioReturnStruct({
  String? audio,
  int? status,
  String? ced,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AudioReturnStruct(
      audio: audio,
      status: status,
      ced: ced,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AudioReturnStruct? updateAudioReturnStruct(
  AudioReturnStruct? audioReturn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    audioReturn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAudioReturnStructData(
  Map<String, dynamic> firestoreData,
  AudioReturnStruct? audioReturn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audioReturn == null) {
    return;
  }
  if (audioReturn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && audioReturn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audioReturnData =
      getAudioReturnFirestoreData(audioReturn, forFieldValue);
  final nestedData =
      audioReturnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = audioReturn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudioReturnFirestoreData(
  AudioReturnStruct? audioReturn, [
  bool forFieldValue = false,
]) {
  if (audioReturn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audioReturn.toMap());

  // Add any Firestore field values
  audioReturn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudioReturnListFirestoreData(
  List<AudioReturnStruct>? audioReturns,
) =>
    audioReturns?.map((e) => getAudioReturnFirestoreData(e, true)).toList() ??
    [];
