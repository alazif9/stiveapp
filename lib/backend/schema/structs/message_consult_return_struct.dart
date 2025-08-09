// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageConsultReturnStruct extends FFFirebaseStruct {
  MessageConsultReturnStruct({
    String? object,
    List<MessageReturnStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _object = object,
        _data = data,
        super(firestoreUtilData);

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  set object(String? val) => _object = val;

  bool hasObject() => _object != null;

  // "data" field.
  List<MessageReturnStruct>? _data;
  List<MessageReturnStruct> get data => _data ?? const [];
  set data(List<MessageReturnStruct>? val) => _data = val;

  void updateData(Function(List<MessageReturnStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static MessageConsultReturnStruct fromMap(Map<String, dynamic> data) =>
      MessageConsultReturnStruct(
        object: data['object'] as String?,
        data: getStructList(
          data['data'],
          MessageReturnStruct.fromMap,
        ),
      );

  static MessageConsultReturnStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageConsultReturnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'object': _object,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'object': serializeParam(
          _object,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MessageConsultReturnStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MessageConsultReturnStruct(
        object: deserializeParam(
          data['object'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam<MessageReturnStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: MessageReturnStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MessageConsultReturnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MessageConsultReturnStruct &&
        object == other.object &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([object, data]);
}

MessageConsultReturnStruct createMessageConsultReturnStruct({
  String? object,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageConsultReturnStruct(
      object: object,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageConsultReturnStruct? updateMessageConsultReturnStruct(
  MessageConsultReturnStruct? messageConsultReturn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageConsultReturn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageConsultReturnStructData(
  Map<String, dynamic> firestoreData,
  MessageConsultReturnStruct? messageConsultReturn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageConsultReturn == null) {
    return;
  }
  if (messageConsultReturn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageConsultReturn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageConsultReturnData =
      getMessageConsultReturnFirestoreData(messageConsultReturn, forFieldValue);
  final nestedData =
      messageConsultReturnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      messageConsultReturn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageConsultReturnFirestoreData(
  MessageConsultReturnStruct? messageConsultReturn, [
  bool forFieldValue = false,
]) {
  if (messageConsultReturn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageConsultReturn.toMap());

  // Add any Firestore field values
  messageConsultReturn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageConsultReturnListFirestoreData(
  List<MessageConsultReturnStruct>? messageConsultReturns,
) =>
    messageConsultReturns
        ?.map((e) => getMessageConsultReturnFirestoreData(e, true))
        .toList() ??
    [];
