import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoricoRecord extends FirestoreRecord {
  HistoricoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "threadId" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  bool hasThreadId() => _threadId != null;

  // "mensagem" field.
  String? _mensagem;
  String get mensagem => _mensagem ?? '';
  bool hasMensagem() => _mensagem != null;

  // "origem" field.
  String? _origem;
  String get origem => _origem ?? '';
  bool hasOrigem() => _origem != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "assistente_especialista" field.
  String? _assistenteEspecialista;
  String get assistenteEspecialista => _assistenteEspecialista ?? '';
  bool hasAssistenteEspecialista() => _assistenteEspecialista != null;

  // "secao" field.
  String? _secao;
  String get secao => _secao ?? '';
  bool hasSecao() => _secao != null;

  // "transcricao_audio" field.
  bool? _transcricaoAudio;
  bool get transcricaoAudio => _transcricaoAudio ?? false;
  bool hasTranscricaoAudio() => _transcricaoAudio != null;

  // "transcricao_file" field.
  bool? _transcricaoFile;
  bool get transcricaoFile => _transcricaoFile ?? false;
  bool hasTranscricaoFile() => _transcricaoFile != null;

  // "historico_especialista" field.
  MessageConsultReturnStruct? _historicoEspecialista;
  MessageConsultReturnStruct get historicoEspecialista =>
      _historicoEspecialista ?? MessageConsultReturnStruct();
  bool hasHistoricoEspecialista() => _historicoEspecialista != null;

  // "historico_roteador" field.
  MessageConsultReturnStruct? _historicoRoteador;
  MessageConsultReturnStruct get historicoRoteador =>
      _historicoRoteador ?? MessageConsultReturnStruct();
  bool hasHistoricoRoteador() => _historicoRoteador != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _threadId = snapshotData['threadId'] as String?;
    _mensagem = snapshotData['mensagem'] as String?;
    _origem = snapshotData['origem'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _assistenteEspecialista =
        snapshotData['assistente_especialista'] as String?;
    _secao = snapshotData['secao'] as String?;
    _transcricaoAudio = snapshotData['transcricao_audio'] as bool?;
    _transcricaoFile = snapshotData['transcricao_file'] as bool?;
    _historicoEspecialista =
        snapshotData['historico_especialista'] is MessageConsultReturnStruct
            ? snapshotData['historico_especialista']
            : MessageConsultReturnStruct.maybeFromMap(
                snapshotData['historico_especialista']);
    _historicoRoteador =
        snapshotData['historico_roteador'] is MessageConsultReturnStruct
            ? snapshotData['historico_roteador']
            : MessageConsultReturnStruct.maybeFromMap(
                snapshotData['historico_roteador']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('historico')
          : FirebaseFirestore.instance.collectionGroup('historico');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('historico').doc(id);

  static Stream<HistoricoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoricoRecord.fromSnapshot(s));

  static Future<HistoricoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoricoRecord.fromSnapshot(s));

  static HistoricoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoricoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoricoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoricoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoricoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoricoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoricoRecordData({
  String? threadId,
  String? mensagem,
  String? origem,
  DateTime? timestamp,
  String? assistenteEspecialista,
  String? secao,
  bool? transcricaoAudio,
  bool? transcricaoFile,
  MessageConsultReturnStruct? historicoEspecialista,
  MessageConsultReturnStruct? historicoRoteador,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'threadId': threadId,
      'mensagem': mensagem,
      'origem': origem,
      'timestamp': timestamp,
      'assistente_especialista': assistenteEspecialista,
      'secao': secao,
      'transcricao_audio': transcricaoAudio,
      'transcricao_file': transcricaoFile,
      'historico_especialista': MessageConsultReturnStruct().toMap(),
      'historico_roteador': MessageConsultReturnStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "historico_especialista" field.
  addMessageConsultReturnStructData(
      firestoreData, historicoEspecialista, 'historico_especialista');

  // Handle nested data for "historico_roteador" field.
  addMessageConsultReturnStructData(
      firestoreData, historicoRoteador, 'historico_roteador');

  return firestoreData;
}

class HistoricoRecordDocumentEquality implements Equality<HistoricoRecord> {
  const HistoricoRecordDocumentEquality();

  @override
  bool equals(HistoricoRecord? e1, HistoricoRecord? e2) {
    return e1?.threadId == e2?.threadId &&
        e1?.mensagem == e2?.mensagem &&
        e1?.origem == e2?.origem &&
        e1?.timestamp == e2?.timestamp &&
        e1?.assistenteEspecialista == e2?.assistenteEspecialista &&
        e1?.secao == e2?.secao &&
        e1?.transcricaoAudio == e2?.transcricaoAudio &&
        e1?.transcricaoFile == e2?.transcricaoFile &&
        e1?.historicoEspecialista == e2?.historicoEspecialista &&
        e1?.historicoRoteador == e2?.historicoRoteador;
  }

  @override
  int hash(HistoricoRecord? e) => const ListEquality().hash([
        e?.threadId,
        e?.mensagem,
        e?.origem,
        e?.timestamp,
        e?.assistenteEspecialista,
        e?.secao,
        e?.transcricaoAudio,
        e?.transcricaoFile,
        e?.historicoEspecialista,
        e?.historicoRoteador
      ]);

  @override
  bool isValidKey(Object? o) => o is HistoricoRecord;
}
