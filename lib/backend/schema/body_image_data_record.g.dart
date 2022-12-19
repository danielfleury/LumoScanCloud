// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_image_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BodyImageDataRecord> _$bodyImageDataRecordSerializer =
    new _$BodyImageDataRecordSerializer();

class _$BodyImageDataRecordSerializer
    implements StructuredSerializer<BodyImageDataRecord> {
  @override
  final Iterable<Type> types = const [
    BodyImageDataRecord,
    _$BodyImageDataRecord
  ];
  @override
  final String wireName = 'BodyImageDataRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BodyImageDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imageUploadDate;
    if (value != null) {
      result
        ..add('image_upload_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.patientId;
    if (value != null) {
      result
        ..add('patient_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bodyCapture1;
    if (value != null) {
      result
        ..add('body_capture_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.bodyCapture2;
    if (value != null) {
      result
        ..add('body_capture_2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.bodyCapture3;
    if (value != null) {
      result
        ..add('body_capture_3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.bodyCapture4;
    if (value != null) {
      result
        ..add('body_capture_4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.bodyCapture5;
    if (value != null) {
      result
        ..add('body_capture_5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BodyImageDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BodyImageDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image_upload_date':
          result.imageUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'patient_id':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body_capture_1':
          result.bodyCapture1 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'body_capture_2':
          result.bodyCapture2 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'body_capture_3':
          result.bodyCapture3 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'body_capture_4':
          result.bodyCapture4 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'body_capture_5':
          result.bodyCapture5 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BodyImageDataRecord extends BodyImageDataRecord {
  @override
  final DateTime? imageUploadDate;
  @override
  final String? patientId;
  @override
  final DocumentReference<Object?>? bodyCapture1;
  @override
  final DocumentReference<Object?>? bodyCapture2;
  @override
  final DocumentReference<Object?>? bodyCapture3;
  @override
  final DocumentReference<Object?>? bodyCapture4;
  @override
  final DocumentReference<Object?>? bodyCapture5;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BodyImageDataRecord(
          [void Function(BodyImageDataRecordBuilder)? updates]) =>
      (new BodyImageDataRecordBuilder()..update(updates))._build();

  _$BodyImageDataRecord._(
      {this.imageUploadDate,
      this.patientId,
      this.bodyCapture1,
      this.bodyCapture2,
      this.bodyCapture3,
      this.bodyCapture4,
      this.bodyCapture5,
      this.ffRef})
      : super._();

  @override
  BodyImageDataRecord rebuild(
          void Function(BodyImageDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BodyImageDataRecordBuilder toBuilder() =>
      new BodyImageDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BodyImageDataRecord &&
        imageUploadDate == other.imageUploadDate &&
        patientId == other.patientId &&
        bodyCapture1 == other.bodyCapture1 &&
        bodyCapture2 == other.bodyCapture2 &&
        bodyCapture3 == other.bodyCapture3 &&
        bodyCapture4 == other.bodyCapture4 &&
        bodyCapture5 == other.bodyCapture5 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, imageUploadDate.hashCode),
                                patientId.hashCode),
                            bodyCapture1.hashCode),
                        bodyCapture2.hashCode),
                    bodyCapture3.hashCode),
                bodyCapture4.hashCode),
            bodyCapture5.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BodyImageDataRecord')
          ..add('imageUploadDate', imageUploadDate)
          ..add('patientId', patientId)
          ..add('bodyCapture1', bodyCapture1)
          ..add('bodyCapture2', bodyCapture2)
          ..add('bodyCapture3', bodyCapture3)
          ..add('bodyCapture4', bodyCapture4)
          ..add('bodyCapture5', bodyCapture5)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BodyImageDataRecordBuilder
    implements Builder<BodyImageDataRecord, BodyImageDataRecordBuilder> {
  _$BodyImageDataRecord? _$v;

  DateTime? _imageUploadDate;
  DateTime? get imageUploadDate => _$this._imageUploadDate;
  set imageUploadDate(DateTime? imageUploadDate) =>
      _$this._imageUploadDate = imageUploadDate;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  DocumentReference<Object?>? _bodyCapture1;
  DocumentReference<Object?>? get bodyCapture1 => _$this._bodyCapture1;
  set bodyCapture1(DocumentReference<Object?>? bodyCapture1) =>
      _$this._bodyCapture1 = bodyCapture1;

  DocumentReference<Object?>? _bodyCapture2;
  DocumentReference<Object?>? get bodyCapture2 => _$this._bodyCapture2;
  set bodyCapture2(DocumentReference<Object?>? bodyCapture2) =>
      _$this._bodyCapture2 = bodyCapture2;

  DocumentReference<Object?>? _bodyCapture3;
  DocumentReference<Object?>? get bodyCapture3 => _$this._bodyCapture3;
  set bodyCapture3(DocumentReference<Object?>? bodyCapture3) =>
      _$this._bodyCapture3 = bodyCapture3;

  DocumentReference<Object?>? _bodyCapture4;
  DocumentReference<Object?>? get bodyCapture4 => _$this._bodyCapture4;
  set bodyCapture4(DocumentReference<Object?>? bodyCapture4) =>
      _$this._bodyCapture4 = bodyCapture4;

  DocumentReference<Object?>? _bodyCapture5;
  DocumentReference<Object?>? get bodyCapture5 => _$this._bodyCapture5;
  set bodyCapture5(DocumentReference<Object?>? bodyCapture5) =>
      _$this._bodyCapture5 = bodyCapture5;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BodyImageDataRecordBuilder() {
    BodyImageDataRecord._initializeBuilder(this);
  }

  BodyImageDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUploadDate = $v.imageUploadDate;
      _patientId = $v.patientId;
      _bodyCapture1 = $v.bodyCapture1;
      _bodyCapture2 = $v.bodyCapture2;
      _bodyCapture3 = $v.bodyCapture3;
      _bodyCapture4 = $v.bodyCapture4;
      _bodyCapture5 = $v.bodyCapture5;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BodyImageDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BodyImageDataRecord;
  }

  @override
  void update(void Function(BodyImageDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BodyImageDataRecord build() => _build();

  _$BodyImageDataRecord _build() {
    final _$result = _$v ??
        new _$BodyImageDataRecord._(
            imageUploadDate: imageUploadDate,
            patientId: patientId,
            bodyCapture1: bodyCapture1,
            bodyCapture2: bodyCapture2,
            bodyCapture3: bodyCapture3,
            bodyCapture4: bodyCapture4,
            bodyCapture5: bodyCapture5,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
