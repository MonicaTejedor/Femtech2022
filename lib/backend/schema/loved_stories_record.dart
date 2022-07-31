import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loved_stories_record.g.dart';

abstract class LovedStoriesRecord
    implements Built<LovedStoriesRecord, LovedStoriesRecordBuilder> {
  static Serializer<LovedStoriesRecord> get serializer =>
      _$lovedStoriesRecordSerializer;

  @BuiltValueField(wireName: 'story_owner')
  DocumentReference? get storyOwner;

  @BuiltValueField(wireName: 'date_loved')
  DateTime? get dateLoved;

  @BuiltValueField(wireName: 'id_loved_stories')
  DocumentReference? get idLovedStories;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LovedStoriesRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loved_stories');

  static Stream<LovedStoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LovedStoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LovedStoriesRecord._();
  factory LovedStoriesRecord(
          [void Function(LovedStoriesRecordBuilder) updates]) =
      _$LovedStoriesRecord;

  static LovedStoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLovedStoriesRecordData({
  DocumentReference? storyOwner,
  DateTime? dateLoved,
  DocumentReference? idLovedStories,
}) {
  final firestoreData = serializers.toFirestore(
    LovedStoriesRecord.serializer,
    LovedStoriesRecord(
      (l) => l
        ..storyOwner = storyOwner
        ..dateLoved = dateLoved
        ..idLovedStories = idLovedStories,
    ),
  );

  return firestoreData;
}
