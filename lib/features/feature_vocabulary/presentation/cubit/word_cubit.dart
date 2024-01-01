import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/domain/repositories/word_repository.dart';

part 'word_state.dart';

part 'word_cubit.freezed.dart';

class WordCubit extends Cubit<WordState> {
  WordRepository repo;

  WordCubit({required this.repo}) : super(const WordState.initial(0));

  List<Word> words = [];
  List<Word> wordsCache = [];
  List<String> knownWords = [];
  List<String> dontKnowWord = [];
  int currentPage = 0;
  bool isFinished = false;

  Future<void> loadWords() async {
    emit(const WordState.loading());
    try {
      words = await repo.getWords();
      wordsCache.addAll(words);
      emit(const WordState.success());
    } catch (e) {
      emit(const WordState.error(
          'Something Happened, Check your internet connection!'));
    }
  }

  void know(String title) {
    knownWords.add(title);
    words.removeWhere((element) => element.title == title);
    currentPage++;
    if (words.isEmpty) {
      emit(const WordState.finished());
    } else {
      emit(WordState.wordsChanged(words),);
      emit(const WordState.success());
    }
  }

  void dontKnow(Word word, int currentIndex) {
    words.add(word);
    words.removeAt(currentIndex);
    currentPage++;
    emit(WordState.wordsChanged(words));
    emit(const WordState.success());
  }

  void repeat() {
    words.addAll(wordsCache);
    print(words);
    emit(const WordState.success());
  }
}
