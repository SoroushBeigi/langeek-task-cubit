
import 'package:task/core/api/api_result.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';

abstract class WordRepository{
  Future<ApiResult<List<Word>>> getWords();
}