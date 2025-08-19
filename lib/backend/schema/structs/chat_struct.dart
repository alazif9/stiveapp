// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChatStruct extends FFFirebaseStruct {
  ChatStruct({
    String? role,
    String? content,
    bool? chat,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _content = content,
        _chat = chat,
        super(firestoreUtilData);

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "chat" field.
  bool? _chat;
  bool get chat => _chat ?? false;
  set chat(bool? val) => _chat = val;

  bool hasChat() => _chat != null;

  static ChatStruct fromMap(Map<String, dynamic> data) => ChatStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
        chat: data['chat'] as bool?,
      );

  static ChatStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
        'chat': _chat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'chat': serializeParam(
          _chat,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        chat: deserializeParam(
          data['chat'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatStruct &&
        role == other.role &&
        content == other.content &&
        chat == other.chat;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content, chat]);
}

ChatStruct createChatStruct({
  String? role,
  String? content,
  bool? chat,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatStruct(
      role: role,
      content: content,
      chat: chat,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatStruct? updateChatStruct(
  ChatStruct? chatStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatStructData(
  Map<String, dynamic> firestoreData,
  ChatStruct? chatStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatStruct == null) {
    return;
  }
  if (chatStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatStructData = getChatFirestoreData(chatStruct, forFieldValue);
  final nestedData = chatStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatFirestoreData(
  ChatStruct? chatStruct, [
  bool forFieldValue = false,
]) {
  if (chatStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatStruct.toMap());

  // Add any Firestore field values
  chatStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatListFirestoreData(
  List<ChatStruct>? chatStructs,
) =>
    chatStructs?.map((e) => getChatFirestoreData(e, true)).toList() ?? [];
