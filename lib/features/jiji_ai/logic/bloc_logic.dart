

import 'package:bloc/bloc.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_event.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_state.dart';

class JijiBloc extends Bloc<JijiEvent, JijiState> {
  JijiBloc() : super(JijiInitial()) {
    on<SubmitQueryEvent>((event, emit) {
      emit(JijiLoaded(event.query));
    });
  }
}
