
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';

abstract class WordRepository{
  Future<List<Word>> getWords();
}