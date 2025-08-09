import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssistentesRecord extends FirestoreRecord {
  AssistentesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _section = snapshotData['section'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assistentes');

  static Stream<AssistentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssistentesRecord.fromSnapshot(s));

  static Future<AssistentesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssistentesRecord.fromSnapshot(s));

  static AssistentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssistentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssistentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssistentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssistentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssistentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssistentesRecordData({
  String? id,
  String? section,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'section': section,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssistentesRecordDocumentEquality implements Equality<AssistentesRecord> {
  const AssistentesRecordDocumentEquality();

  @override
  bool equals(AssistentesRecord? e1, AssistentesRecord? e2) {
    return e1?.id == e2?.id && e1?.section == e2?.section;
  }

  @override
  int hash(AssistentesRecord? e) =>
      const ListEquality().hash([e?.id, e?.section]);

  @override
  bool isValidKey(Object? o) => o is AssistentesRecord;
}
