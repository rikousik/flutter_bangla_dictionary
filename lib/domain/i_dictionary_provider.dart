import 'package:flutter/foundation.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';

abstract class IDictionaryProvider {
  Future<List<Word>> loadAllWords();
  List<String> getLetters();
  List<Word> searchWord({@required String searchText});
}
