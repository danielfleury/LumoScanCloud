// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_capture_5_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BodyCapture5Record> _$bodyCapture5RecordSerializer =
    new _$BodyCapture5RecordSerializer();

class _$BodyCapture5RecordSerializer
    implements StructuredSerializer<BodyCapture5Record> {
  @override
  final Iterable<Type> types = const [BodyCapture5Record, _$BodyCapture5Record];
  @override
  final String wireName = 'BodyCapture5Record';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BodyCapture5Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image1;
    if (value != null) {
      result
        ..add('image1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image2;
    if (value != null) {
      result
        ..add('image2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image3;
    if (value != null) {
      result
        ..add('image3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image4;
    if (value != null) {
      result
        ..add('image4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image5;
    if (value != null) {
      result
        ..add('image5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BodyCapture5Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BodyCapture5RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image1':
          result.image1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image2':
          result.image2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image3':
          result.image3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image4':
          result.image4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image5':
          result.image5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$BodyCapture5Record extends BodyCapture5Record {
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? image4;
  @override
  final String? image5;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BodyCapture5Record(
          [void Function(BodyCapture5RecordBuilder)? updates]) =>
      (new BodyCapture5RecordBuilder()..update(updates))._build();

  _$BodyCapture5Record._(
      {this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.ffRef})
      : super._();

  @override
  BodyCapture5Record rebuild(
          void Function(BodyCapture5RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BodyCapture5RecordBuilder toBuilder() =>
      new BodyCapture5RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BodyCapture5Record &&
        image1 == other.image1 &&
        image2 == other.image2 &&
        image3 == other.image3 &&
        image4 == other.image4 &&
        image5 == other.image5 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, image1.hashCode), image2.hashCode),
                    image3.hashCode),
                image4.hashCode),
            image5.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BodyCapture5Record')
          ..add('image1', image1)
          ..add('image2', image2)
          ..add('image3', image3)
          ..add('image4', image4)
          ..add('image5', image5)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BodyCapture5RecordBuilder
    implements Builder<BodyCapture5Record, BodyCapture5RecordBuilder> {
  _$BodyCapture5Record? _$v;

  String? _image1;
  String? get image1 => _$this._image1;
  set image1(String? image1) => _$this._image1 = image1;

  String? _image2;
  String? get image2 => _$this._image2;
  set image2(String? image2) => _$this._image2 = image2;

  String? _image3;
  String? get image3 => _$this._image3;
  set image3(String? image3) => _$this._image3 = image3;

  String? _image4;
  String? get image4 => _$this._image4;
  set image4(String? image4) => _$this._image4 = image4;

  String? _image5;
  String? get image5 => _$this._image5;
  set image5(String? image5) => _$this._image5 = image5;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BodyCapture5RecordBuilder() {
    BodyCapture5Record._initializeBuilder(this);
  }

  BodyCapture5RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image1 = $v.image1;
      _image2 = $v.image2;
      _image3 = $v.image3;
      _image4 = $v.image4;
      _image5 = $v.image5;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BodyCapture5Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BodyCapture5Record;
  }

  @override
  void update(void Function(BodyCapture5RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BodyCapture5Record build() => _build();

  _$BodyCapture5Record _build() {
    final _$result = _$v ??
        new _$BodyCapture5Record._(
            image1: image1,
            image2: image2,
            image3: image3,
            image4: image4,
            image5: image5,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
