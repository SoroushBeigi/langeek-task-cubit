import 'package:task/features/feature_vocabulary/data/providers/api_provider.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';

class WordRepositoryImpl extends WordRepository {
  ApiProvider apiProvider;

  WordRepositoryImpl({required this.apiProvider});

  @override
  Future<List<Word>> getWords() => apiProvider.getWords();
}
