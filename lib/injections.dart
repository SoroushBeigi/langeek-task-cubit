import 'package:get_it/get_it.dart';
import 'package:task/features/feature_vocabulary/data/providers/api_provider.dart';
import 'package:task/features/feature_vocabulary/data/repositories/word_repository_impl.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';
import 'package:task/features/feature_vocabulary/presentation/cubit/word_cubit.dart';

GetIt locator = GetIt.I;

setup() async {
  //providers
  locator.registerSingleton<ApiProvider>(ApiProvider());

  //repositories
  locator.registerSingleton<WordRepository>(WordRepositoryImpl(
    apiProvider: locator(),
  ));

  //TODO
  locator.registerSingleton<WordCubit>(WordCubit(repo: locator()));
}
