import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stories_record.g.dart';

abstract class StoriesRecord
    implements Built<StoriesRecord, StoriesRecordBuilder> {
  static Serializer<StoriesRecord> get serializer => _$storiesRecordSerializer;

  @BuiltValueField(wireName: 'id_story')
  String? get idStory;

  @BuiltValueField(wireName: 'name_story')
  String? get nameStory;

  @BuiltValueField(wireName: 'content_story')
  String? get contentStory;

  @BuiltValueField(wireName: 'date_create')
  DateTime? get dateCreate;

  @BuiltValueField(wireName: 'user_story')
  String? get userStory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StoriesRecordBuilder builder) => builder
    ..idStory = ''
    ..nameStory = ''
    ..contentStory = ''
    ..userStory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stories');

  static Stream<StoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StoriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StoriesRecord._();
  factory StoriesRecord([void Function(StoriesRecordBuilder) updates]) =
      _$StoriesRecord;

  static StoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStoriesRecordData({
  String? idStory,
  String? nameStory,
  String? contentStory,
  DateTime? dateCreate,
  String? userStory,
}) {
  final firestoreData = serializers.toFirestore(
    StoriesRecord.serializer,
    StoriesRecord(
      (s) => s
        ..idStory = idStory
        ..nameStory = nameStory
        ..contentStory = contentStory
        ..dateCreate = dateCreate
        ..userStory = userStory,
    ),
  );

  return firestoreData;
}
