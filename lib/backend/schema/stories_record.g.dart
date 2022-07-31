// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoriesRecord> _$storiesRecordSerializer =
    new _$StoriesRecordSerializer();

class _$StoriesRecordSerializer implements StructuredSerializer<StoriesRecord> {
  @override
  final Iterable<Type> types = const [StoriesRecord, _$StoriesRecord];
  @override
  final String wireName = 'StoriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idStory;
    if (value != null) {
      result
        ..add('id_story')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameStory;
    if (value != null) {
      result
        ..add('name_story')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contentStory;
    if (value != null) {
      result
        ..add('content_story')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comentsCount;
    if (value != null) {
      result
        ..add('coments_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.viewsCount;
    if (value != null) {
      result
        ..add('views_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateCreate;
    if (value != null) {
      result
        ..add('date_create')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userStory;
    if (value != null) {
      result
        ..add('user_story')
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
  StoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_story':
          result.idStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_story':
          result.nameStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content_story':
          result.contentStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coments_count':
          result.comentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'views_count':
          result.viewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date_create':
          result.dateCreate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user_story':
          result.userStory = serializers.deserialize(value,
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

class _$StoriesRecord extends StoriesRecord {
  @override
  final String? idStory;
  @override
  final String? nameStory;
  @override
  final String? contentStory;
  @override
  final int? comentsCount;
  @override
  final int? viewsCount;
  @override
  final DateTime? dateCreate;
  @override
  final String? userStory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StoriesRecord([void Function(StoriesRecordBuilder)? updates]) =>
      (new StoriesRecordBuilder()..update(updates))._build();

  _$StoriesRecord._(
      {this.idStory,
      this.nameStory,
      this.contentStory,
      this.comentsCount,
      this.viewsCount,
      this.dateCreate,
      this.userStory,
      this.ffRef})
      : super._();

  @override
  StoriesRecord rebuild(void Function(StoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoriesRecordBuilder toBuilder() => new StoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoriesRecord &&
        idStory == other.idStory &&
        nameStory == other.nameStory &&
        contentStory == other.contentStory &&
        comentsCount == other.comentsCount &&
        viewsCount == other.viewsCount &&
        dateCreate == other.dateCreate &&
        userStory == other.userStory &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, idStory.hashCode), nameStory.hashCode),
                            contentStory.hashCode),
                        comentsCount.hashCode),
                    viewsCount.hashCode),
                dateCreate.hashCode),
            userStory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoriesRecord')
          ..add('idStory', idStory)
          ..add('nameStory', nameStory)
          ..add('contentStory', contentStory)
          ..add('comentsCount', comentsCount)
          ..add('viewsCount', viewsCount)
          ..add('dateCreate', dateCreate)
          ..add('userStory', userStory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StoriesRecordBuilder
    implements Builder<StoriesRecord, StoriesRecordBuilder> {
  _$StoriesRecord? _$v;

  String? _idStory;
  String? get idStory => _$this._idStory;
  set idStory(String? idStory) => _$this._idStory = idStory;

  String? _nameStory;
  String? get nameStory => _$this._nameStory;
  set nameStory(String? nameStory) => _$this._nameStory = nameStory;

  String? _contentStory;
  String? get contentStory => _$this._contentStory;
  set contentStory(String? contentStory) => _$this._contentStory = contentStory;

  int? _comentsCount;
  int? get comentsCount => _$this._comentsCount;
  set comentsCount(int? comentsCount) => _$this._comentsCount = comentsCount;

  int? _viewsCount;
  int? get viewsCount => _$this._viewsCount;
  set viewsCount(int? viewsCount) => _$this._viewsCount = viewsCount;

  DateTime? _dateCreate;
  DateTime? get dateCreate => _$this._dateCreate;
  set dateCreate(DateTime? dateCreate) => _$this._dateCreate = dateCreate;

  String? _userStory;
  String? get userStory => _$this._userStory;
  set userStory(String? userStory) => _$this._userStory = userStory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StoriesRecordBuilder() {
    StoriesRecord._initializeBuilder(this);
  }

  StoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idStory = $v.idStory;
      _nameStory = $v.nameStory;
      _contentStory = $v.contentStory;
      _comentsCount = $v.comentsCount;
      _viewsCount = $v.viewsCount;
      _dateCreate = $v.dateCreate;
      _userStory = $v.userStory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoriesRecord;
  }

  @override
  void update(void Function(StoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoriesRecord build() => _build();

  _$StoriesRecord _build() {
    final _$result = _$v ??
        new _$StoriesRecord._(
            idStory: idStory,
            nameStory: nameStory,
            contentStory: contentStory,
            comentsCount: comentsCount,
            viewsCount: viewsCount,
            dateCreate: dateCreate,
            userStory: userStory,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
