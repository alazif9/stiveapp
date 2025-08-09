// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PostMessageBodyStruct extends FFFirebaseStruct {
  PostMessageBodyStruct({
    String? role,
    String? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _content = content,
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

  static PostMessageBodyStruct fromMap(Map<String, dynamic> data) =>
      PostMessageBodyStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static PostMessageBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? PostMessageBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
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
      }.withoutNulls;

  static PostMessageBodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostMessageBodyStruct(
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
      );

  @override
  String toString() => 'PostMessageBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostMessageBodyStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

PostMessageBodyStruct createPostMessageBodyStruct({
  String? role,
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PostMessageBodyStruct(
      role: role,
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PostMessageBodyStruct? updatePostMessageBodyStruct(
  PostMessageBodyStruct? postMessageBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    postMessageBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostMessageBodyStructData(
  Map<String, dynamic> firestoreData,
  PostMessageBodyStruct? postMessageBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (postMessageBody == null) {
    return;
  }
  if (postMessageBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && postMessageBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postMessageBodyData =
      getPostMessageBodyFirestoreData(postMessageBody, forFieldValue);
  final nestedData =
      postMessageBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = postMessageBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostMessageBodyFirestoreData(
  PostMessageBodyStruct? postMessageBody, [
  bool forFieldValue = false,
]) {
  if (postMessageBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(postMessageBody.toMap());

  // Add any Firestore field values
  postMessageBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostMessageBodyListFirestoreData(
  List<PostMessageBodyStruct>? postMessageBodys,
) =>
    postMessageBodys
        ?.map((e) => getPostMessageBodyFirestoreData(e, true))
        .toList() ??
    [];
