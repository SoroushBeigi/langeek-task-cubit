import 'package:bloc/bloc.dart';
import 'package:task/core/api/api_result.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_state.dart';

part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordRepository repo;

  WordCubit({required this.repo}) : super(const WordState.initial(0));

  int _currentPage = 0;
  List<Word> _words = [];

  get words => _words;

  get currentPage => _currentPage;

  get isFirstPage => _currentPage == 0;

  get isLastPage => _currentPage == _words.length - 1;

  Future<void> loadWords() async {
    emit(const WordState.loading());
    final result = await repo.getWords();
    result.when(
      success: (data) {
        _words = data;
        emit(const WordState.success());
      },
      failure: (error) => emit(
        WordState.error(error),
      ),
    );
  }

  void goToNextPage(bool hasSwiped) {
    _currentPage++;
    emit(WordState.newPage(_currentPage));
  }

  void goToPreviousPage(bool hasSwiped) {
    _currentPage--;
    emit(WordState.newPage(_currentPage));
  }

  void repeat() {
    _currentPage = 0;
    emit(const WordState.initial(0));
  }

  void finish() {
    emit(const WordState.finished());
  }
}
