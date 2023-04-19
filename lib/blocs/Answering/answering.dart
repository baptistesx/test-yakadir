import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_yakadir/models/answering_mode.dart';

import 'answering_events.dart';
import 'answering_states.dart';

class AnsweringBloc extends Bloc<AnsweringEvent, AnsweringState> {
  /// We can pass an initial state to allow use to manually fetching setting during launch
  AnsweringBloc({
    AnsweringState? initialState,
  }) : super(initialState ?? ReadyToAnswerState(AnsweringMode.speaking)) {
    on<SwitchToSpeakingModeEvent>(switchToSpeakingMode);
    on<SwitchToWrittingModeEvent>(switchToWrittingMode);
  }

  Future<void> switchToSpeakingMode(
    SwitchToSpeakingModeEvent event,
    Emitter<AnsweringState> emit,
  ) async {
    emit(AnswerLoadingState());
    emit(ReadyToAnswerState(AnsweringMode.speaking));
  }

  Future<void> switchToWrittingMode(
    SwitchToWrittingModeEvent event,
    Emitter<AnsweringState> emit,
  ) async {
    emit(AnswerLoadingState());
    emit(ReadyToAnswerState(AnsweringMode.writting));
  }
}
