import 'package:test_yakadir/models/answering_mode.dart';

abstract class AnsweringState {}

class AnswerLoadingState extends AnsweringState {}

class ReadyToAnswerState extends AnsweringState {
  final AnsweringMode mode;

  ReadyToAnswerState(this.mode);
}
