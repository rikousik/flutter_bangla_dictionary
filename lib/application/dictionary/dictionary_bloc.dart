import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bangla_dictionary/domain/i_dictionary_provider.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';
part 'dictionary_bloc.freezed.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final IDictionaryProvider dictionaryProvider;
  DictionaryBloc({@required this.dictionaryProvider})
      : super(DictionaryState.initial());

  @override
  Stream<DictionaryState> mapEventToState(
    DictionaryEvent event,
  ) async* {
    yield* event.map(loadWords: (event) async* {
      final List<Word> words = await dictionaryProvider.loadAllWords();
      final List<String> letters = dictionaryProvider.getLetters();
      yield DictionaryState(words: words, letters: letters, showHome: true);
    }, searchWord: (event) async* {
      if (event.searchText.isNotEmpty) {
        final List<Word> words =
            dictionaryProvider.searchWord(searchText: event.searchText);

        yield state.copyWith(words: words);
      } else {
        add(const LoadWords());
      }
    });
    // TODO: implement mapEventToState
  }
}
