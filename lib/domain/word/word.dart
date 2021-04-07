import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'word.freezed.dart';

part 'word.g.dart';

@freezed
abstract class Word with _$Word {
  @HiveType(typeId: 0, adapterName: 'WordAdapter')
  const factory Word({
    @required @HiveField(0) @JsonKey(name: 'pron') List<String> pronounciation,
    @required @HiveField(1) @JsonKey(name: 'bn') String bangla,
    @required @HiveField(2) @JsonKey(name: 'en') String english,
    @required @HiveField(3) @JsonKey(name: 'bn_syns') List<String> bnSynonyms,
    @required @HiveField(4) @JsonKey(name: 'en_syns') List<String> engSynonyms,
    @required @HiveField(5) @JsonKey(name: 'sents') List<String> sentences,
  }) = _WordData;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}
