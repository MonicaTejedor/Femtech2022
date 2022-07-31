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
    value = object.imageStory;
    if (value != null) {
      result
        ..add('image_story')
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
    value = object.lovedStory;
    if (value != null) {
      result
        ..add('loved_story')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        case 'id_story':
          result.idStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_story':
          result.nameStory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_story':
          result.imageStory = serializers.deserialize(value,
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
        case 'loved_story':
          result.lovedStory = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
  final String? idStory;
  @override
  final String? nameStory;
  @override
  final String? imageStory;
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
  final bool? lovedStory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AllStoriesRecord(
          [void Function(AllStoriesRecordBuilder)? updates]) =>
      (new AllStoriesRecordBuilder()..update(updates))._build();

  _$AllStoriesRecord._(
      {this.idStory,
      this.nameStory,
      this.imageStory,
      this.contentStory,
      this.comentsCount,
      this.viewsCount,
      this.dateCreate,
      this.userStory,
      this.lovedStory,
      this.ffRef})
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
        idStory == other.idStory &&
        nameStory == other.nameStory &&
        imageStory == other.imageStory &&
        contentStory == other.contentStory &&
        comentsCount == other.comentsCount &&
        viewsCount == other.viewsCount &&
        dateCreate == other.dateCreate &&
        userStory == other.userStory &&
        lovedStory == other.lovedStory &&
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
                            $jc(
                                $jc(
                                    $jc($jc(0, idStory.hashCode),
                                        nameStory.hashCode),
                                    imageStory.hashCode),
                                contentStory.hashCode),
                            comentsCount.hashCode),
                        viewsCount.hashCode),
                    dateCreate.hashCode),
                userStory.hashCode),
            lovedStory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllStoriesRecord')
          ..add('idStory', idStory)
          ..add('nameStory', nameStory)
          ..add('imageStory', imageStory)
          ..add('contentStory', contentStory)
          ..add('comentsCount', comentsCount)
          ..add('viewsCount', viewsCount)
          ..add('dateCreate', dateCreate)
          ..add('userStory', userStory)
          ..add('lovedStory', lovedStory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AllStoriesRecordBuilder
    implements Builder<AllStoriesRecord, AllStoriesRecordBuilder> {
  _$AllStoriesRecord? _$v;

  String? _idStory;
  String? get idStory => _$this._idStory;
  set idStory(String? idStory) => _$this._idStory = idStory;

  String? _nameStory;
  String? get nameStory => _$this._nameStory;
  set nameStory(String? nameStory) => _$this._nameStory = nameStory;

  String? _imageStory;
  String? get imageStory => _$this._imageStory;
  set imageStory(String? imageStory) => _$this._imageStory = imageStory;

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

  bool? _lovedStory;
  bool? get lovedStory => _$this._lovedStory;
  set lovedStory(bool? lovedStory) => _$this._lovedStory = lovedStory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AllStoriesRecordBuilder() {
    AllStoriesRecord._initializeBuilder(this);
  }

  AllStoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idStory = $v.idStory;
      _nameStory = $v.nameStory;
      _imageStory = $v.imageStory;
      _contentStory = $v.contentStory;
      _comentsCount = $v.comentsCount;
      _viewsCount = $v.viewsCount;
      _dateCreate = $v.dateCreate;
      _userStory = $v.userStory;
      _lovedStory = $v.lovedStory;
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
            idStory: idStory,
            nameStory: nameStory,
            imageStory: imageStory,
            contentStory: contentStory,
            comentsCount: comentsCount,
            viewsCount: viewsCount,
            dateCreate: dateCreate,
            userStory: userStory,
            lovedStory: lovedStory,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
