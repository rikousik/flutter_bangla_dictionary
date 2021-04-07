// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Word _$WordFromJson(Map<String, dynamic> json) {
  return _WordData.fromJson(json);
}

/// @nodoc
class _$WordTearOff {
  const _$WordTearOff();

// ignore: unused_element
  _WordData call(
      {@required
      @HiveField(0)
      @JsonKey(name: 'pron')
          List<String> pronounciation,
      @required
      @HiveField(1)
      @JsonKey(name: 'bn')
          String bangla,
      @required
      @HiveField(2)
      @JsonKey(name: 'en')
          String english,
      @required
      @HiveField(3)
      @JsonKey(name: 'bn_syns')
          List<String> bnSynonyms,
      @required
      @HiveField(4)
      @JsonKey(name: 'en_syns')
          List<String> engSynonyms,
      @required
      @HiveField(5)
      @JsonKey(name: 'sents')
          List<String> sentences}) {
    return _WordData(
      pronounciation: pronounciation,
      bangla: bangla,
      english: english,
      bnSynonyms: bnSynonyms,
      engSynonyms: engSynonyms,
      sentences: sentences,
    );
  }

// ignore: unused_element
  Word fromJson(Map<String, Object> json) {
    return Word.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Word = _$WordTearOff();

/// @nodoc
mixin _$Word {
  @HiveField(0)
  @JsonKey(name: 'pron')
  List<String> get pronounciation;
  @HiveField(1)
  @JsonKey(name: 'bn')
  String get bangla;
  @HiveField(2)
  @JsonKey(name: 'en')
  String get english;
  @HiveField(3)
  @JsonKey(name: 'bn_syns')
  List<String> get bnSynonyms;
  @HiveField(4)
  @JsonKey(name: 'en_syns')
  List<String> get engSynonyms;
  @HiveField(5)
  @JsonKey(name: 'sents')
  List<String> get sentences;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WordCopyWith<Word> get copyWith;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'pron') List<String> pronounciation,
      @HiveField(1) @JsonKey(name: 'bn') String bangla,
      @HiveField(2) @JsonKey(name: 'en') String english,
      @HiveField(3) @JsonKey(name: 'bn_syns') List<String> bnSynonyms,
      @HiveField(4) @JsonKey(name: 'en_syns') List<String> engSynonyms,
      @HiveField(5) @JsonKey(name: 'sents') List<String> sentences});
}

/// @nodoc
class _$WordCopyWithImpl<$Res> implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  final Word _value;
  // ignore: unused_field
  final $Res Function(Word) _then;

  @override
  $Res call({
    Object pronounciation = freezed,
    Object bangla = freezed,
    Object english = freezed,
    Object bnSynonyms = freezed,
    Object engSynonyms = freezed,
    Object sentences = freezed,
  }) {
    return _then(_value.copyWith(
      pronounciation: pronounciation == freezed
          ? _value.pronounciation
          : pronounciation as List<String>,
      bangla: bangla == freezed ? _value.bangla : bangla as String,
      english: english == freezed ? _value.english : english as String,
      bnSynonyms: bnSynonyms == freezed
          ? _value.bnSynonyms
          : bnSynonyms as List<String>,
      engSynonyms: engSynonyms == freezed
          ? _value.engSynonyms
          : engSynonyms as List<String>,
      sentences:
          sentences == freezed ? _value.sentences : sentences as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WordDataCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$WordDataCopyWith(_WordData value, $Res Function(_WordData) then) =
      __$WordDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'pron') List<String> pronounciation,
      @HiveField(1) @JsonKey(name: 'bn') String bangla,
      @HiveField(2) @JsonKey(name: 'en') String english,
      @HiveField(3) @JsonKey(name: 'bn_syns') List<String> bnSynonyms,
      @HiveField(4) @JsonKey(name: 'en_syns') List<String> engSynonyms,
      @HiveField(5) @JsonKey(name: 'sents') List<String> sentences});
}

/// @nodoc
class __$WordDataCopyWithImpl<$Res> extends _$WordCopyWithImpl<$Res>
    implements _$WordDataCopyWith<$Res> {
  __$WordDataCopyWithImpl(_WordData _value, $Res Function(_WordData) _then)
      : super(_value, (v) => _then(v as _WordData));

  @override
  _WordData get _value => super._value as _WordData;

  @override
  $Res call({
    Object pronounciation = freezed,
    Object bangla = freezed,
    Object english = freezed,
    Object bnSynonyms = freezed,
    Object engSynonyms = freezed,
    Object sentences = freezed,
  }) {
    return _then(_WordData(
      pronounciation: pronounciation == freezed
          ? _value.pronounciation
          : pronounciation as List<String>,
      bangla: bangla == freezed ? _value.bangla : bangla as String,
      english: english == freezed ? _value.english : english as String,
      bnSynonyms: bnSynonyms == freezed
          ? _value.bnSynonyms
          : bnSynonyms as List<String>,
      engSynonyms: engSynonyms == freezed
          ? _value.engSynonyms
          : engSynonyms as List<String>,
      sentences:
          sentences == freezed ? _value.sentences : sentences as List<String>,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'WordAdapter')

/// @nodoc
class _$_WordData implements _WordData {
  const _$_WordData(
      {@required @HiveField(0) @JsonKey(name: 'pron') this.pronounciation,
      @required @HiveField(1) @JsonKey(name: 'bn') this.bangla,
      @required @HiveField(2) @JsonKey(name: 'en') this.english,
      @required @HiveField(3) @JsonKey(name: 'bn_syns') this.bnSynonyms,
      @required @HiveField(4) @JsonKey(name: 'en_syns') this.engSynonyms,
      @required @HiveField(5) @JsonKey(name: 'sents') this.sentences})
      : assert(pronounciation != null),
        assert(bangla != null),
        assert(english != null),
        assert(bnSynonyms != null),
        assert(engSynonyms != null),
        assert(sentences != null);

  factory _$_WordData.fromJson(Map<String, dynamic> json) =>
      _$_$_WordDataFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'pron')
  final List<String> pronounciation;
  @override
  @HiveField(1)
  @JsonKey(name: 'bn')
  final String bangla;
  @override
  @HiveField(2)
  @JsonKey(name: 'en')
  final String english;
  @override
  @HiveField(3)
  @JsonKey(name: 'bn_syns')
  final List<String> bnSynonyms;
  @override
  @HiveField(4)
  @JsonKey(name: 'en_syns')
  final List<String> engSynonyms;
  @override
  @HiveField(5)
  @JsonKey(name: 'sents')
  final List<String> sentences;

  @override
  String toString() {
    return 'Word(pronounciation: $pronounciation, bangla: $bangla, english: $english, bnSynonyms: $bnSynonyms, engSynonyms: $engSynonyms, sentences: $sentences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordData &&
            (identical(other.pronounciation, pronounciation) ||
                const DeepCollectionEquality()
                    .equals(other.pronounciation, pronounciation)) &&
            (identical(other.bangla, bangla) ||
                const DeepCollectionEquality().equals(other.bangla, bangla)) &&
            (identical(other.english, english) ||
                const DeepCollectionEquality()
                    .equals(other.english, english)) &&
            (identical(other.bnSynonyms, bnSynonyms) ||
                const DeepCollectionEquality()
                    .equals(other.bnSynonyms, bnSynonyms)) &&
            (identical(other.engSynonyms, engSynonyms) ||
                const DeepCollectionEquality()
                    .equals(other.engSynonyms, engSynonyms)) &&
            (identical(other.sentences, sentences) ||
                const DeepCollectionEquality()
                    .equals(other.sentences, sentences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pronounciation) ^
      const DeepCollectionEquality().hash(bangla) ^
      const DeepCollectionEquality().hash(english) ^
      const DeepCollectionEquality().hash(bnSynonyms) ^
      const DeepCollectionEquality().hash(engSynonyms) ^
      const DeepCollectionEquality().hash(sentences);

  @JsonKey(ignore: true)
  @override
  _$WordDataCopyWith<_WordData> get copyWith =>
      __$WordDataCopyWithImpl<_WordData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WordDataToJson(this);
  }
}

abstract class _WordData implements Word {
  const factory _WordData(
      {@required
      @HiveField(0)
      @JsonKey(name: 'pron')
          List<String> pronounciation,
      @required
      @HiveField(1)
      @JsonKey(name: 'bn')
          String bangla,
      @required
      @HiveField(2)
      @JsonKey(name: 'en')
          String english,
      @required
      @HiveField(3)
      @JsonKey(name: 'bn_syns')
          List<String> bnSynonyms,
      @required
      @HiveField(4)
      @JsonKey(name: 'en_syns')
          List<String> engSynonyms,
      @required
      @HiveField(5)
      @JsonKey(name: 'sents')
          List<String> sentences}) = _$_WordData;

  factory _WordData.fromJson(Map<String, dynamic> json) = _$_WordData.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'pron')
  List<String> get pronounciation;
  @override
  @HiveField(1)
  @JsonKey(name: 'bn')
  String get bangla;
  @override
  @HiveField(2)
  @JsonKey(name: 'en')
  String get english;
  @override
  @HiveField(3)
  @JsonKey(name: 'bn_syns')
  List<String> get bnSynonyms;
  @override
  @HiveField(4)
  @JsonKey(name: 'en_syns')
  List<String> get engSynonyms;
  @override
  @HiveField(5)
  @JsonKey(name: 'sents')
  List<String> get sentences;
  @override
  @JsonKey(ignore: true)
  _$WordDataCopyWith<_WordData> get copyWith;
}
