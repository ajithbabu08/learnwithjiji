abstract class JijiState {}

class JijiInitial extends JijiState {}

class JijiLoaded extends JijiState {
  final String answer;
  JijiLoaded(this.answer);
}
