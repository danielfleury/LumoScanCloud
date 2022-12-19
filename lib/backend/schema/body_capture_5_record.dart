import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_capture_5_record.g.dart';

abstract class BodyCapture5Record
    implements Built<BodyCapture5Record, BodyCapture5RecordBuilder> {
  static Serializer<BodyCapture5Record> get serializer =>
      _$bodyCapture5RecordSerializer;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  String? get image5;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyCapture5RecordBuilder builder) => builder
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..image5 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('body_capture_5');

  static Stream<BodyCapture5Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyCapture5Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyCapture5Record._();
  factory BodyCapture5Record(
          [void Function(BodyCapture5RecordBuilder) updates]) =
      _$BodyCapture5Record;

  static BodyCapture5Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyCapture5RecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = serializers.toFirestore(
    BodyCapture5Record.serializer,
    BodyCapture5Record(
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
