import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_image_data_record.g.dart';

abstract class BodyImageDataRecord
    implements Built<BodyImageDataRecord, BodyImageDataRecordBuilder> {
  static Serializer<BodyImageDataRecord> get serializer =>
      _$bodyImageDataRecordSerializer;

  @BuiltValueField(wireName: 'image_upload_date')
  DateTime? get imageUploadDate;

  @BuiltValueField(wireName: 'patient_id')
  String? get patientId;

  @BuiltValueField(wireName: 'body_capture_1')
  DocumentReference? get bodyCapture1;

  @BuiltValueField(wireName: 'body_capture_2')
  DocumentReference? get bodyCapture2;

  @BuiltValueField(wireName: 'body_capture_3')
  DocumentReference? get bodyCapture3;

  @BuiltValueField(wireName: 'body_capture_4')
  DocumentReference? get bodyCapture4;

  @BuiltValueField(wireName: 'body_capture_5')
  DocumentReference? get bodyCapture5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyImageDataRecordBuilder builder) =>
      builder..patientId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_image_data');

  static Stream<BodyImageDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyImageDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyImageDataRecord._();
  factory BodyImageDataRecord(
          [void Function(BodyImageDataRecordBuilder) updates]) =
      _$BodyImageDataRecord;

  static BodyImageDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyImageDataRecordData({
  DateTime? imageUploadDate,
  String? patientId,
  DocumentReference? bodyCapture1,
  DocumentReference? bodyCapture2,
  DocumentReference? bodyCapture3,
  DocumentReference? bodyCapture4,
  DocumentReference? bodyCapture5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyImageDataRecord.serializer,
    BodyImageDataRecord(
      (b) => b
        ..imageUploadDate = imageUploadDate
        ..patientId = patientId
        ..bodyCapture1 = bodyCapture1
        ..bodyCapture2 = bodyCapture2
        ..bodyCapture3 = bodyCapture3
        ..bodyCapture4 = bodyCapture4
        ..bodyCapture5 = bodyCapture5,
    ),
  );

  return firestoreData;
}
