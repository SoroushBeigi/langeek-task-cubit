import 'package:dio/dio.dart';
import 'package:task/core/api/api_result.dart';
import 'package:task/core/api/network_exceptions.dart';
import 'package:task/core/constants.dart';
import 'package:task/features/feature_vocabulary/data/models/word_model.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<ApiResult<List<Word>>> getWords() async {
    try {
      final response =
          await _dio.get(Constants.baseUrl + Constants.wordsEndpoint);
      List<Word> words = (response.data['cards'] as List<dynamic>)
          .map<Word>((e) => WordModel.fromJson(e))
          .toList();
      return ApiResult.success(data: words);
    } catch (e) {
      return ApiResult.failure(
        error: NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e),
        ),
      );
    }
  }
}
