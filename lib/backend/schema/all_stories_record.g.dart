// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_stories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllStoriesRecord> _$allStoriesRecordSerializer =
    new _$AllStoriesRecordSerializer();

class _$AllStoriesRecordSerializer
    implements StructuredSerializer<AllStoriesRecord> {
  @override
  final Iterable<Type> types = const [AllStoriesRecord, _$AllStoriesRecord];
  @override
  final String wireName = 'AllStoriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AllStoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ownerUser;
    if (value != null) {
      result
        ..add('owner_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idAllStory;
    if (value != null) {
      result
        ..add('id_all_story')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idUser;
    if (value != null) {
      result
        ..add('id_user')
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
  AllStoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllStoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner_user':
          result.ownerUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_all_story':
          result.idAllStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_user':
          result.idUser = serializers.deserialize(value,
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

class _$AllStoriesRecord extends AllStoriesRecord {
  @override
  final String? ownerUser;
  @override
  final String? idAllStory;
  @override
  final DocumentReference<Object?>? idUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AllStoriesRecord(
          [void Function(AllStoriesRecordBuilder)? updates]) =>
      (new AllStoriesRecordBuilder()..update(updates))._build();

  _$AllStoriesRecord._(
      {this.ownerUser, this.idAllStory, this.idUser, this.ffRef})
      : super._();

  @override
  AllStoriesRecord rebuild(void Function(AllStoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllStoriesRecordBuilder toBuilder() =>
      new AllStoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllStoriesRecord &&
        ownerUser == other.ownerUser &&
        idAllStory == other.idAllStory &&
        idUser == other.idUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ownerUser.hashCode), idAllStory.hashCode),
            idUser.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllStoriesRecord')
          ..add('ownerUser', ownerUser)
          ..add('idAllStory', idAllStory)
          ..add('idUser', idUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AllStoriesRecordBuilder
    implements Builder<AllStoriesRecord, AllStoriesRecordBuilder> {
  _$AllStoriesRecord? _$v;

  String? _ownerUser;
  String? get ownerUser => _$this._ownerUser;
  set ownerUser(String? ownerUser) => _$this._ownerUser = ownerUser;

  String? _idAllStory;
  String? get idAllStory => _$this._idAllStory;
  set idAllStory(String? idAllStory) => _$this._idAllStory = idAllStory;

  DocumentReference<Object?>? _idUser;
  DocumentReference<Object?>? get idUser => _$this._idUser;
  set idUser(DocumentReference<Object?>? idUser) => _$this._idUser = idUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AllStoriesRecordBuilder() {
    AllStoriesRecord._initializeBuilder(this);
  }

  AllStoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerUser = $v.ownerUser;
      _idAllStory = $v.idAllStory;
      _idUser = $v.idUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllStoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllStoriesRecord;
  }

  @override
  void update(void Function(AllStoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllStoriesRecord build() => _build();

  _$AllStoriesRecord _build() {
    final _$result = _$v ??
        new _$AllStoriesRecord._(
            ownerUser: ownerUser,
            idAllStory: idAllStory,
            idUser: idUser,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
