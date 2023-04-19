import '../../utils/constants.dart';

abstract class TestState {}

class TestInitialState extends TestState {}

class TestFetchingState extends TestState {}

class TestFetchFailedState extends TestState {
  final ErrorMessage message;

  TestFetchFailedState(this.message);
}

class TestUpdatedState extends TestState {
  TestUpdatedState();
}
