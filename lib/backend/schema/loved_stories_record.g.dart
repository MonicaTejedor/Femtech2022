// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loved_stories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LovedStoriesRecord> _$lovedStoriesRecordSerializer =
    new _$LovedStoriesRecordSerializer();

class _$LovedStoriesRecordSerializer
    implements StructuredSerializer<LovedStoriesRecord> {
  @override
  final Iterable<Type> types = const [LovedStoriesRecord, _$LovedStoriesRecord];
  @override
  final String wireName = 'LovedStoriesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LovedStoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.storyOwner;
    if (value != null) {
      result
        ..add('story_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.dateLoved;
    if (value != null) {
      result
        ..add('date_loved')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.idLovedStories;
    if (value != null) {
      result
        ..add('id_loved_stories')
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
  LovedStoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LovedStoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'story_owner':
          result.storyOwner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'date_loved':
          result.dateLoved = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'id_loved_stories':
          result.idLovedStories = serializers.deserialize(value,
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

class _$LovedStoriesRecord extends LovedStoriesRecord {
  @override
  final DocumentReference<Object?>? storyOwner;
  @override
  final DateTime? dateLoved;
  @override
  final DocumentReference<Object?>? idLovedStories;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LovedStoriesRecord(
          [void Function(LovedStoriesRecordBuilder)? updates]) =>
      (new LovedStoriesRecordBuilder()..update(updates))._build();

  _$LovedStoriesRecord._(
      {this.storyOwner, this.dateLoved, this.idLovedStories, this.ffRef})
      : super._();

  @override
  LovedStoriesRecord rebuild(
          void Function(LovedStoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LovedStoriesRecordBuilder toBuilder() =>
      new LovedStoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LovedStoriesRecord &&
        storyOwner == other.storyOwner &&
        dateLoved == other.dateLoved &&
        idLovedStories == other.idLovedStories &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, storyOwner.hashCode), dateLoved.hashCode),
            idLovedStories.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LovedStoriesRecord')
          ..add('storyOwner', storyOwner)
          ..add('dateLoved', dateLoved)
          ..add('idLovedStories', idLovedStories)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LovedStoriesRecordBuilder
    implements Builder<LovedStoriesRecord, LovedStoriesRecordBuilder> {
  _$LovedStoriesRecord? _$v;

  DocumentReference<Object?>? _storyOwner;
  DocumentReference<Object?>? get storyOwner => _$this._storyOwner;
  set storyOwner(DocumentReference<Object?>? storyOwner) =>
      _$this._storyOwner = storyOwner;

  DateTime? _dateLoved;
  DateTime? get dateLoved => _$this._dateLoved;
  set dateLoved(DateTime? dateLoved) => _$this._dateLoved = dateLoved;

  DocumentReference<Object?>? _idLovedStories;
  DocumentReference<Object?>? get idLovedStories => _$this._idLovedStories;
  set idLovedStories(DocumentReference<Object?>? idLovedStories) =>
      _$this._idLovedStories = idLovedStories;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LovedStoriesRecordBuilder() {
    LovedStoriesRecord._initializeBuilder(this);
  }

  LovedStoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storyOwner = $v.storyOwner;
      _dateLoved = $v.dateLoved;
      _idLovedStories = $v.idLovedStories;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LovedStoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LovedStoriesRecord;
  }

  @override
  void update(void Function(LovedStoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LovedStoriesRecord build() => _build();

  _$LovedStoriesRecord _build() {
    final _$result = _$v ??
        new _$LovedStoriesRecord._(
            storyOwner: storyOwner,
            dateLoved: dateLoved,
            idLovedStories: idLovedStories,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
