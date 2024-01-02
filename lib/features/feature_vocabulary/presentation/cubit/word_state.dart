part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState.initial(int index) = _Initial;
  const factory WordState.loading() = _Loading;
  const factory WordState.error(String error) = _Error;
  const factory WordState.success() = _Success;
  const factory WordState.newPage(int index,bool hasSwiped) = _NewPage;
  const factory WordState.finished() = _Finished;
}
