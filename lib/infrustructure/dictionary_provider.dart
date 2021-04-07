import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bangla_dictionary/domain/i_dictionary_provider.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:autotrie/autotrie.dart';

Future<List<Word>> getWords() async {
  final String minidb = await rootBundle.loadString('asset/db.json');
  final List<Word> words = await compute(parseWord, minidb);
  return words;
}

List<Word> parseWord(String jsonString) {
  final List<dynamic> json = jsonDecode(jsonString) as List<dynamic>;

  return List<Word>.from(
      json.map((e) => Word.fromJson(e as Map<String, dynamic>)));
}

class DictionaryProvider extends IDictionaryProvider {
  final Box dictionaryBox = Hive.box('dictionaryBox');
  final Map<String, Map<String, Word>> wordsMap = {};
  final List<String> letters = [];
  final List<Word> shortListedWords = [];

  @override
  Future<List<Word>> loadAllWords() async {
    if (shortListedWords.isEmpty) {
      final List<Word> allWords = await getWords();

      for (final Word word in allWords) {
        final String firstChar = word.english[0].toLowerCase();
        if (wordsMap[firstChar] == null) {
          letters.add(firstChar);
          wordsMap[firstChar] = {};
        }
        wordsMap[firstChar][word.english] = word;
        dictionaryBox.put(word.english, word);
      }

      letters.sort();
      for (final String letter in letters) {
        // wordsMap[letter].sort((a, b) => a.english.compareTo(b.english));
        shortListedWords.addAll(wordsMap[letter].values.take(50));
      }

      // Logger().i(wordsMap.length);

      //
      return shortListedWords;
    } else {
      return shortListedWords;
    }
  }

  @override
  List<Word> searchWord({String searchText}) {
    Logger().i("searchText: $searchText");
    if (searchText.length > 1) {
      final Map result = dictionaryBox.searchKeys(searchText.toLowerCase());
      final List<String> keys = [];
      for (final dynamic word in result.keys.toList()) {
        keys.add(word as String);
      }

      final List<Word> resultWords =
          List<Word>.from(keys.map((e) => dictionaryBox.get(e)));

      Logger().i("result: ${resultWords.length}");
      return resultWords;
    } else {
      if (letters.contains(searchText)) {
        final List<Word> words = wordsMap[searchText].values.toList();
        words.sort((a, b) => a.english.compareTo(b.english));

        return words;
      } else {
        return [];
      }
    }
  }

  @override
  List<String> getLetters() => letters;
}
