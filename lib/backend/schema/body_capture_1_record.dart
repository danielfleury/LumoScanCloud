import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_capture_1_record.g.dart';

abstract class BodyCapture1Record
    implements Built<BodyCapture1Record, BodyCapture1RecordBuilder> {
  static Serializer<BodyCapture1Record> get serializer =>
      _$bodyCapture1RecordSerializer;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  String? get image5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyCapture1RecordBuilder builder) => builder
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..image5 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_capture_1');

  static Stream<BodyCapture1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyCapture1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyCapture1Record._();
  factory BodyCapture1Record(
          [void Function(BodyCapture1RecordBuilder) updates]) =
      _$BodyCapture1Record;

  static BodyCapture1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyCapture1RecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyCapture1Record.serializer,
    BodyCapture1Record(
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
