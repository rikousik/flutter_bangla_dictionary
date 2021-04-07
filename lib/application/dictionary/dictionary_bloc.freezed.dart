// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DictionaryEventTearOff {
  const _$DictionaryEventTearOff();

// ignore: unused_element
  LoadWords loadWords() {
    return const LoadWords();
  }

// ignore: unused_element
  SearchWord searchWord({@required String searchText}) {
    return SearchWord(
      searchText: searchText,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DictionaryEvent = _$DictionaryEventTearOff();

/// @nodoc
mixin _$DictionaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadWords(),
    @required TResult searchWord(String searchText),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadWords(),
    TResult searchWord(String searchText),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadWords(LoadWords value),
    @required TResult searchWord(SearchWord value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadWords(LoadWords value),
    TResult searchWord(SearchWord value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DictionaryEventCopyWith<$Res> {
  factory $DictionaryEventCopyWith(
          DictionaryEvent value, $Res Function(DictionaryEvent) then) =
      _$DictionaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._value, this._then);

  final DictionaryEvent _value;
  // ignore: unused_field
  final $Res Function(DictionaryEvent) _then;
}

/// @nodoc
abstract class $LoadWordsCopyWith<$Res> {
  factory $LoadWordsCopyWith(LoadWords value, $Res Function(LoadWords) then) =
      _$LoadWordsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadWordsCopyWithImpl<$Res> extends _$DictionaryEventCopyWithImpl<$Res>
    implements $LoadWordsCopyWith<$Res> {
  _$LoadWordsCopyWithImpl(LoadWords _value, $Res Function(LoadWords) _then)
      : super(_value, (v) => _then(v as LoadWords));

  @override
  LoadWords get _value => super._value as LoadWords;
}

/// @nodoc
class _$LoadWords with DiagnosticableTreeMixin implements LoadWords {
  const _$LoadWords();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryEvent.loadWords()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DictionaryEvent.loadWords'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadWords(),
    @required TResult searchWord(String searchText),
  }) {
    assert(loadWords != null);
    assert(searchWord != null);
    return loadWords();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadWords(),
    TResult searchWord(String searchText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadWords != null) {
      return loadWords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadWords(LoadWords value),
    @required TResult searchWord(SearchWord value),
  }) {
    assert(loadWords != null);
    assert(searchWord != null);
    return loadWords(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadWords(LoadWords value),
    TResult searchWord(SearchWord value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadWords != null) {
      return loadWords(this);
    }
    return orElse();
  }
}

abstract class LoadWords implements DictionaryEvent {
  const factory LoadWords() = _$LoadWords;
}

/// @nodoc
abstract class $SearchWordCopyWith<$Res> {
  factory $SearchWordCopyWith(
          SearchWord value, $Res Function(SearchWord) then) =
      _$SearchWordCopyWithImpl<$Res>;
  $Res call({String searchText});
}

/// @nodoc
class _$SearchWordCopyWithImpl<$Res> extends _$DictionaryEventCopyWithImpl<$Res>
    implements $SearchWordCopyWith<$Res> {
  _$SearchWordCopyWithImpl(SearchWord _value, $Res Function(SearchWord) _then)
      : super(_value, (v) => _then(v as SearchWord));

  @override
  SearchWord get _value => super._value as SearchWord;

  @override
  $Res call({
    Object searchText = freezed,
  }) {
    return _then(SearchWord(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
    ));
  }
}

/// @nodoc
class _$SearchWord with DiagnosticableTreeMixin implements SearchWord {
  const _$SearchWord({@required this.searchText}) : assert(searchText != null);

  @override
  final String searchText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryEvent.searchWord(searchText: $searchText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DictionaryEvent.searchWord'))
      ..add(DiagnosticsProperty('searchText', searchText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchWord &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchText);

  @JsonKey(ignore: true)
  @override
  $SearchWordCopyWith<SearchWord> get copyWith =>
      _$SearchWordCopyWithImpl<SearchWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadWords(),
    @required TResult searchWord(String searchText),
  }) {
    assert(loadWords != null);
    assert(searchWord != null);
    return searchWord(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadWords(),
    TResult searchWord(String searchText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchWord != null) {
      return searchWord(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadWords(LoadWords value),
    @required TResult searchWord(SearchWord value),
  }) {
    assert(loadWords != null);
    assert(searchWord != null);
    return searchWord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadWords(LoadWords value),
    TResult searchWord(SearchWord value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchWord != null) {
      return searchWord(this);
    }
    return orElse();
  }
}

abstract class SearchWord implements DictionaryEvent {
  const factory SearchWord({@required String searchText}) = _$SearchWord;

  String get searchText;
  @JsonKey(ignore: true)
  $SearchWordCopyWith<SearchWord> get copyWith;
}

/// @nodoc
class _$DictionaryStateTearOff {
  const _$DictionaryStateTearOff();

// ignore: unused_element
  _DictionaryState call(
      {@required List<String> letters,
      @required bool showHome,
      @required List<Word> words}) {
    return _DictionaryState(
      letters: letters,
      showHome: showHome,
      words: words,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DictionaryState = _$DictionaryStateTearOff();

/// @nodoc
mixin _$DictionaryState {
  List<String> get letters;
  bool get showHome;
  List<Word> get words;

  @JsonKey(ignore: true)
  $DictionaryStateCopyWith<DictionaryState> get copyWith;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res>;
  $Res call({List<String> letters, bool showHome, List<Word> words});
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  final DictionaryState _value;
  // ignore: unused_field
  final $Res Function(DictionaryState) _then;

  @override
  $Res call({
    Object letters = freezed,
    Object showHome = freezed,
    Object words = freezed,
  }) {
    return _then(_value.copyWith(
      letters: letters == freezed ? _value.letters : letters as List<String>,
      showHome: showHome == freezed ? _value.showHome : showHome as bool,
      words: words == freezed ? _value.words : words as List<Word>,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryStateCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$DictionaryStateCopyWith(
          _DictionaryState value, $Res Function(_DictionaryState) then) =
      __$DictionaryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> letters, bool showHome, List<Word> words});
}

/// @nodoc
class __$DictionaryStateCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res>
    implements _$DictionaryStateCopyWith<$Res> {
  __$DictionaryStateCopyWithImpl(
      _DictionaryState _value, $Res Function(_DictionaryState) _then)
      : super(_value, (v) => _then(v as _DictionaryState));

  @override
  _DictionaryState get _value => super._value as _DictionaryState;

  @override
  $Res call({
    Object letters = freezed,
    Object showHome = freezed,
    Object words = freezed,
  }) {
    return _then(_DictionaryState(
      letters: letters == freezed ? _value.letters : letters as List<String>,
      showHome: showHome == freezed ? _value.showHome : showHome as bool,
      words: words == freezed ? _value.words : words as List<Word>,
    ));
  }
}

/// @nodoc
class _$_DictionaryState
    with DiagnosticableTreeMixin
    implements _DictionaryState {
  const _$_DictionaryState(
      {@required this.letters, @required this.showHome, @required this.words})
      : assert(letters != null),
        assert(showHome != null),
        assert(words != null);

  @override
  final List<String> letters;
  @override
  final bool showHome;
  @override
  final List<Word> words;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryState(letters: $letters, showHome: $showHome, words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DictionaryState'))
      ..add(DiagnosticsProperty('letters', letters))
      ..add(DiagnosticsProperty('showHome', showHome))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryState &&
            (identical(other.letters, letters) ||
                const DeepCollectionEquality()
                    .equals(other.letters, letters)) &&
            (identical(other.showHome, showHome) ||
                const DeepCollectionEquality()
                    .equals(other.showHome, showHome)) &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(letters) ^
      const DeepCollectionEquality().hash(showHome) ^
      const DeepCollectionEquality().hash(words);

  @JsonKey(ignore: true)
  @override
  _$DictionaryStateCopyWith<_DictionaryState> get copyWith =>
      __$DictionaryStateCopyWithImpl<_DictionaryState>(this, _$identity);
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState(
      {@required List<String> letters,
      @required bool showHome,
      @required List<Word> words}) = _$_DictionaryState;

  @override
  List<String> get letters;
  @override
  bool get showHome;
  @override
  List<Word> get words;
  @override
  @JsonKey(ignore: true)
  _$DictionaryStateCopyWith<_DictionaryState> get copyWith;
}
