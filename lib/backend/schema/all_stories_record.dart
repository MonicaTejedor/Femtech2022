import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'all_stories_record.g.dart';

abstract class AllStoriesRecord
    implements Built<AllStoriesRecord, AllStoriesRecordBuilder> {
  static Serializer<AllStoriesRecord> get serializer =>
      _$allStoriesRecordSerializer;

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

  @BuiltValueField(wireName: 'loved_story')
  bool? get lovedStory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AllStoriesRecordBuilder builder) => builder
    ..idStory = ''
    ..nameStory = ''
    ..contentStory = ''
    ..userStory = ''
    ..lovedStory = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('all_stories');

  static Stream<AllStoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AllStoriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AllStoriesRecord._();
  factory AllStoriesRecord([void Function(AllStoriesRecordBuilder) updates]) =
      _$AllStoriesRecord;

  static AllStoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAllStoriesRecordData({
  String? idStory,
  String? nameStory,
  String? contentStory,
  DateTime? dateCreate,
  String? userStory,
  bool? lovedStory,
}) {
  final firestoreData = serializers.toFirestore(
    AllStoriesRecord.serializer,
    AllStoriesRecord(
      (a) => a
        ..idStory = idStory
        ..nameStory = nameStory
        ..contentStory = contentStory
        ..dateCreate = dateCreate
        ..userStory = userStory
        ..lovedStory = lovedStory,
    ),
  );

  return firestoreData;
}
