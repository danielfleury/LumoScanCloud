import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_capture_2_record.g.dart';

abstract class BodyCapture2Record
    implements Built<BodyCapture2Record, BodyCapture2RecordBuilder> {
  static Serializer<BodyCapture2Record> get serializer =>
      _$bodyCapture2RecordSerializer;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  String? get image5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyCapture2RecordBuilder builder) => builder
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..image5 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_capture_2');

  static Stream<BodyCapture2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyCapture2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyCapture2Record._();
  factory BodyCapture2Record(
          [void Function(BodyCapture2RecordBuilder) updates]) =
      _$BodyCapture2Record;

  static BodyCapture2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyCapture2RecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyCapture2Record.serializer,
    BodyCapture2Record(
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
