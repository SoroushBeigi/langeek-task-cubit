part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.initial(int index) = _Initial;
  const factory WordState.loading() = _Loading;
  const factory WordState.error(String error) = _Error;
  const factory WordState.success() = _Success;
  const factory WordState.wordsChanged(List<Word> words) = _Changed;
  const factory WordState.finished() = _Finished;
}
