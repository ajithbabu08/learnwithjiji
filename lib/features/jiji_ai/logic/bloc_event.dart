abstract class JijiEvent {}

class SubmitQueryEvent extends JijiEvent {
  final String query;
  SubmitQueryEvent(this.query);
}
