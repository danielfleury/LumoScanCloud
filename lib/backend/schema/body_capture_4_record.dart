import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_capture_4_record.g.dart';

abstract class BodyCapture4Record
    implements Built<BodyCapture4Record, BodyCapture4RecordBuilder> {
  static Serializer<BodyCapture4Record> get serializer =>
      _$bodyCapture4RecordSerializer;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  String? get image5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyCapture4RecordBuilder builder) => builder
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..image5 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_capture_4');

  static Stream<BodyCapture4Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyCapture4Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyCapture4Record._();
  factory BodyCapture4Record(
          [void Function(BodyCapture4RecordBuilder) updates]) =
      _$BodyCapture4Record;

  static BodyCapture4Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyCapture4RecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyCapture4Record.serializer,
    BodyCapture4Record(
      (b) => b
        ..image1 = image1
        ..image2 = image2
        ..image3 = image3
        ..image4 = image4
        ..image5 = image5,
    ),
  );

  return firestoreData;
}
