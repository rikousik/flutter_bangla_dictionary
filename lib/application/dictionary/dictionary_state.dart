part of 'dictionary_bloc.dart';

@freezed
abstract class DictionaryState with _$DictionaryState {
  const factory DictionaryState(
      {@required List<String> letters,
      @required bool showHome,
      @required List<Word> words}) = _DictionaryState;

  factory DictionaryState.initial() =>
      const DictionaryState(words: [], letters: [], showHome: false);
}
