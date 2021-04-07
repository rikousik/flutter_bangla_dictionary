part of 'dictionary_bloc.dart';

@freezed
abstract class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.loadWords() = LoadWords;
  const factory DictionaryEvent.searchWord({@required String searchText}) =
      SearchWord;
}
