part of 'word_bloc.dart';

@immutable
class WordState {}

class WordInitial extends WordState {}

class WordLoading extends WordState {}

class WordDone extends WordState {}

class PageChangedState extends WordState {
  final int currentPage;
  PageChangedState({required this.currentPage});
}

class NewWordState extends WordState {}
