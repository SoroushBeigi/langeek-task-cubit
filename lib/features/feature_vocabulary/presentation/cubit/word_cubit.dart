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
  List<String> knownWords = [];
  List<String> dontKnowWord = [];
  int currentPage = 0;

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

  void know(String title) {
    knownWords.add(title);
    words.removeWhere((element) => element.title == title);
    emit(WordState.wordsChanged(words));
  }

  void dontKnow(Word word, int currentIndex) {
    words.add(word);
    words.removeAt(currentIndex);
    currentPage++;
    emit(WordState.wordsChanged(words));
  }
}
