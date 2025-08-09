// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

///
/// type	"service_account"
/// project_id	"stiveapp-45722"
/// private_key_id	"fbb9dbbbee3a2a25094c9f463a8cff873b95674e"
/// private_key	"-----BEGIN PRIVATE
/// KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDgXTtYyUPCOfcY\naAVglob/3EGZkYx1jYxEkl8LmxdAH1rxSFD7sskkbriwzcy73QWrEhqzE+h80TqC\n6PDuhMoFFwU8CvZNlxE8/1zRPFHOwfsf54jEDRamN6uJEEzYh7ByP1ckOc0NmrA1\nMXR1Xf7IsJ0RLR9XhPj4rysDuA8jfXzAdgljSBheIdqIcQE4cvJuYvjd4NAAoqJe\nta91clEdp2+Ifg67OWhdFsMxpO7vIga2A/FP4MGR3dUT1XC+SOOnfpi8H/3ksOVV\nlskfeBIPYI+7Td7MTrnDRlRh5GRkHEJqGXWMQDf8Ap1IjNoTbDJ5M8239fsNueXh\nKIdGqwHhAgMBAAECggEAAaIaG04JQcvgWSeSMPMdj9WdjmGvaiBl9s6SNaxbB6jm\nxYJ9UOy67zqFWoef+7ba2oVA56BvqP9wp6jsjo7txcpWa9rIUtWkfus8tKr1zT2P\nH3sE7UjrWxnFBFQXnBymP5mnj6xiSkzfxx5ZWrycvP8goJIxlAZ0NcK4K2Byz0NA\nR+sr5ecD6iaQBQaDPkgem9U75sl/6u8z7WWban+sNqYEEGaU6JLBkJ9td/Knoey7\nucXBQFr9+EGvhlCbobj4TI7NfsSMuhK3brLWJl1Gz3OZgWyHlH86rwXo4UbIg2Kq\nU2LxP/nDd/lJxInEsxjYGlc63W7e0CX85F73sDov0QKBgQD6n1e8hS84BWQdXYVX\n03KTYyjmZ6BSvJBrdIHz3gUSCHc8x+Kbj615Oi8cqb1X5wtmGu/LCTF/eP9FMDdq\nqoJzVNJ3bQEfkgxovSD5OZpOiLR0j95JtWS2qurJLofaX5AglzaX/Zsn2VJ/bOST\nVQSWpqjH1Gri1AEEqWrtU6pIkQKBgQDlLadexWRnHcJPNuj3850we/ej+XlttLIz\nX5GS0aK6Kik1clm/4+ulap1HrvpcqlHGmhU+VMY5rf/IMzvZ9uCe7TsLCQA3kfXQ\nlpJmtreJYcLVstiFv4On76AMSpVMc3bbIVK+ejZqZQYMCqi4CtDQAoaeov1LqeGk\nFeiQ489MUQKBgQC3XQ+nCVaDyUX3Si4+FKE2fo01Dco53mZXiBVwJBdXm0QJ/0Cn\nihZkpJJFiVbT0mH/oWOiDCbf2doCeAWDkB8DXKLj56ezvno/w2g1j9R68v/8bCo5\niXKXRzOiX93bgqGDhr7VsyHqpND8E+KkfMZvpp3EHoDZVj0sePuXiegDUQKBgBaA\ntBVvJlulpWWny5pFFmMjWP6FyXGHM5Qtxxp2cRb8es1frAZWd9XnMQhP2w9sPdlV\nWc6j/k69kgbzWOYfApE4U/rSaG4Ma+mOT1O8jyrzKXFYPUBsvJ2pvrpWPHCkScBc\ndkZzs5Ig10YpacWgcj5qcRN0h5B9XsWAzTQk2j7xAoGBAIlAtYjQhxWhlWCqiyEq\nBtpNGif9v3KmW+RWwU4uFA+5Dg9CEjUHJB+sK3lzbayxtb8Ds66oB5ZYlHAXdqci\nnERZyNXR+IT/mFhovG2aQJi2F8Av0S6PoDbfEksKQWc72s3Z5k2qiR3ISsU5sWTp\nhtpqQN6NMXBgq474NGR15DRr\n-----END
/// PRIVATE KEY-----\n"
/// client_email	"firebase-adminsdk-fbsvc@stiveapp-45722.iam.gserviceaccount.com"
/// client_id	"103126543543067747721"
/// auth_uri	"https://accounts.google.com/o/oauth2/auth"
/// token_uri	"https://oauth2.googleapis.com/token"
/// auth_provider_x509_cert_url	"https://www.googleapis.com/oauth2/v1/certs"
/// client_x509_cert_url	"https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40stiveapp-45722.iam.gserviceaccount.com"
/// universe_domain	"googleapis.com"
class AaStruct extends FFFirebaseStruct {
  AaStruct({
    ///
    /// type	"service_account"
    /// project_id	"stiveapp-45722"
    /// private_key_id	"fbb9dbbbee3a2a25094c9f463a8cff873b95674e"
    /// private_key	"-----BEGIN PRIVATE
    /// KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDgXTtYyUPCOfcY\naAVglob/3EGZkYx1jYxEkl8LmxdAH1rxSFD7sskkbriwzcy73QWrEhqzE+h80TqC\n6PDuhMoFFwU8CvZNlxE8/1zRPFHOwfsf54jEDRamN6uJEEzYh7ByP1ckOc0NmrA1\nMXR1Xf7IsJ0RLR9XhPj4rysDuA8jfXzAdgljSBheIdqIcQE4cvJuYvjd4NAAoqJe\nta91clEdp2+Ifg67OWhdFsMxpO7vIga2A/FP4MGR3dUT1XC+SOOnfpi8H/3ksOVV\nlskfeBIPYI+7Td7MTrnDRlRh5GRkHEJqGXWMQDf8Ap1IjNoTbDJ5M8239fsNueXh\nKIdGqwHhAgMBAAECggEAAaIaG04JQcvgWSeSMPMdj9WdjmGvaiBl9s6SNaxbB6jm\nxYJ9UOy67zqFWoef+7ba2oVA56BvqP9wp6jsjo7txcpWa9rIUtWkfus8tKr1zT2P\nH3sE7UjrWxnFBFQXnBymP5mnj6xiSkzfxx5ZWrycvP8goJIxlAZ0NcK4K2Byz0NA\nR+sr5ecD6iaQBQaDPkgem9U75sl/6u8z7WWban+sNqYEEGaU6JLBkJ9td/Knoey7\nucXBQFr9+EGvhlCbobj4TI7NfsSMuhK3brLWJl1Gz3OZgWyHlH86rwXo4UbIg2Kq\nU2LxP/nDd/lJxInEsxjYGlc63W7e0CX85F73sDov0QKBgQD6n1e8hS84BWQdXYVX\n03KTYyjmZ6BSvJBrdIHz3gUSCHc8x+Kbj615Oi8cqb1X5wtmGu/LCTF/eP9FMDdq\nqoJzVNJ3bQEfkgxovSD5OZpOiLR0j95JtWS2qurJLofaX5AglzaX/Zsn2VJ/bOST\nVQSWpqjH1Gri1AEEqWrtU6pIkQKBgQDlLadexWRnHcJPNuj3850we/ej+XlttLIz\nX5GS0aK6Kik1clm/4+ulap1HrvpcqlHGmhU+VMY5rf/IMzvZ9uCe7TsLCQA3kfXQ\nlpJmtreJYcLVstiFv4On76AMSpVMc3bbIVK+ejZqZQYMCqi4CtDQAoaeov1LqeGk\nFeiQ489MUQKBgQC3XQ+nCVaDyUX3Si4+FKE2fo01Dco53mZXiBVwJBdXm0QJ/0Cn\nihZkpJJFiVbT0mH/oWOiDCbf2doCeAWDkB8DXKLj56ezvno/w2g1j9R68v/8bCo5\niXKXRzOiX93bgqGDhr7VsyHqpND8E+KkfMZvpp3EHoDZVj0sePuXiegDUQKBgBaA\ntBVvJlulpWWny5pFFmMjWP6FyXGHM5Qtxxp2cRb8es1frAZWd9XnMQhP2w9sPdlV\nWc6j/k69kgbzWOYfApE4U/rSaG4Ma+mOT1O8jyrzKXFYPUBsvJ2pvrpWPHCkScBc\ndkZzs5Ig10YpacWgcj5qcRN0h5B9XsWAzTQk2j7xAoGBAIlAtYjQhxWhlWCqiyEq\nBtpNGif9v3KmW+RWwU4uFA+5Dg9CEjUHJB+sK3lzbayxtb8Ds66oB5ZYlHAXdqci\nnERZyNXR+IT/mFhovG2aQJi2F8Av0S6PoDbfEksKQWc72s3Z5k2qiR3ISsU5sWTp\nhtpqQN6NMXBgq474NGR15DRr\n-----END
    /// PRIVATE KEY-----\n"
    /// client_email	"firebase-adminsdk-fbsvc@stiveapp-45722.iam.gserviceaccount.com"
    /// client_id	"103126543543067747721"
    /// auth_uri	"https://accounts.google.com/o/oauth2/auth"
    /// token_uri	"https://oauth2.googleapis.com/token"
    /// auth_provider_x509_cert_url	"https://www.googleapis.com/oauth2/v1/certs"
    /// client_x509_cert_url	"https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40stiveapp-45722.iam.gserviceaccount.com"
    /// universe_domain	"googleapis.com"
    List<String>? tentativa,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tentativa = tentativa,
        super(firestoreUtilData);

  // "tentativa" field.
  List<String>? _tentativa;
  List<String> get tentativa => _tentativa ?? const [];
  set tentativa(List<String>? val) => _tentativa = val;

  void updateTentativa(Function(List<String>) updateFn) {
    updateFn(_tentativa ??= []);
  }

  bool hasTentativa() => _tentativa != null;

  static AaStruct fromMap(Map<String, dynamic> data) => AaStruct(
        tentativa: getDataList(data['tentativa']),
      );

  static AaStruct? maybeFromMap(dynamic data) =>
      data is Map ? AaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tentativa': _tentativa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tentativa': serializeParam(
          _tentativa,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AaStruct fromSerializableMap(Map<String, dynamic> data) => AaStruct(
        tentativa: deserializeParam<String>(
          data['tentativa'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AaStruct && listEquality.equals(tentativa, other.tentativa);
  }

  @override
  int get hashCode => const ListEquality().hash([tentativa]);
}

AaStruct createAaStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AaStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AaStruct? updateAaStruct(
  AaStruct? aa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAaStructData(
  Map<String, dynamic> firestoreData,
  AaStruct? aa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aa == null) {
    return;
  }
  if (aa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && aa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aaData = getAaFirestoreData(aa, forFieldValue);
  final nestedData = aaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAaFirestoreData(
  AaStruct? aa, [
  bool forFieldValue = false,
]) {
  if (aa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aa.toMap());

  // Add any Firestore field values
  aa.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAaListFirestoreData(
  List<AaStruct>? aas,
) =>
    aas?.map((e) => getAaFirestoreData(e, true)).toList() ?? [];
