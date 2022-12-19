import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_capture_3_record.g.dart';

abstract class BodyCapture3Record
    implements Built<BodyCapture3Record, BodyCapture3RecordBuilder> {
  static Serializer<BodyCapture3Record> get serializer =>
      _$bodyCapture3RecordSerializer;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  String? get image5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyCapture3RecordBuilder builder) => builder
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..image5 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_capture_3');

  static Stream<BodyCapture3Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyCapture3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyCapture3Record._();
  factory BodyCapture3Record(
          [void Function(BodyCapture3RecordBuilder) updates]) =
      _$BodyCapture3Record;

  static BodyCapture3Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyCapture3RecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyCapture3Record.serializer,
    BodyCapture3Record(
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
