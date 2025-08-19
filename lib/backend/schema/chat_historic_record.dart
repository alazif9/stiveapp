import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatHistoricRecord extends FirestoreRecord {
  ChatHistoricRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "chat" field.
  List<ChatStruct>? _chat;
  List<ChatStruct> get chat => _chat ?? const [];
  bool hasChat() => _chat != null;

  // "threadId" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  bool hasThreadId() => _threadId != null;

  // "total_tokens" field.
  int? _totalTokens;
  int get totalTokens => _totalTokens ?? 0;
  bool hasTotalTokens() => _totalTokens != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _chat = getStructList(
      snapshotData['chat'],
      ChatStruct.fromMap,
    );
    _threadId = snapshotData['threadId'] as String?;
    _totalTokens = castToType<int>(snapshotData['total_tokens']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chat_historic')
          : FirebaseFirestore.instance.collectionGroup('chat_historic');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chat_historic').doc(id);

  static Stream<ChatHistoricRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatHistoricRecord.fromSnapshot(s));

  static Future<ChatHistoricRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatHistoricRecord.fromSnapshot(s));

  static ChatHistoricRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatHistoricRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatHistoricRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatHistoricRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatHistoricRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatHistoricRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatHistoricRecordData({
  DateTime? date,
  String? threadId,
  int? totalTokens,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'threadId': threadId,
      'total_tokens': totalTokens,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatHistoricRecordDocumentEquality
    implements Equality<ChatHistoricRecord> {
  const ChatHistoricRecordDocumentEquality();

  @override
  bool equals(ChatHistoricRecord? e1, ChatHistoricRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        listEquality.equals(e1?.chat, e2?.chat) &&
        e1?.threadId == e2?.threadId &&
        e1?.totalTokens == e2?.totalTokens;
  }

  @override
  int hash(ChatHistoricRecord? e) => const ListEquality()
      .hash([e?.date, e?.chat, e?.threadId, e?.totalTokens]);

  @override
  bool isValidKey(Object? o) => o is ChatHistoricRecord;
}
