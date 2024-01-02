import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';

part 'word_state.dart';

part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordRepository repo;

  WordCubit({required this.repo}) : super(const WordState.initial(0));

  int currentPage = 0;
  List<Word> words = [];

  bool isFinished = false;

  get isFirstPage => currentPage == 0;

  get isLastPage => currentPage == words.length - 1;

  Future<void> loadWords() async {
    emit(const WordState.loading());
    try {
      words = await repo.getWords();
      emit(const WordState.success());
    } catch (e) {
      emit(const WordState.error(
          'Something Happened, Check your internet connection!'));
    }
  }

  void goToNextPage(bool hasSwiped) {
    currentPage++;

    emit(
      WordState.newPage(currentPage, hasSwiped),
    );
  }

  void goToPreviousPage(bool hasSwiped) {
    currentPage--;
    emit(WordState.newPage(currentPage, hasSwiped));
  }

  void repeat() {
    currentPage = 0;
    emit(const WordState.success());
  }

  void finish() {
    emit(const WordState.finished());
  }
}
