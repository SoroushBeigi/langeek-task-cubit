import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';

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
    try {
      _words = await repo.getWords();
      emit(const WordState.success());
    } catch (e) {
      emit(const WordState.error(
          'Something Happened, Check your internet connection!'));
    }
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
