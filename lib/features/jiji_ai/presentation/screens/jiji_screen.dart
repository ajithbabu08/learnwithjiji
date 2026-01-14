import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_event.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_logic.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_state.dart';
import 'package:learnwithjiji/features/jiji_ai/presentation/widgets/answer_widget.dart';
import 'package:learnwithjiji/features/jiji_ai/presentation/widgets/avatar_widget.dart';
import 'package:learnwithjiji/features/jiji_ai/presentation/widgets/searchbar_widget.dart';


class JijiScreen extends StatelessWidget {
  const JijiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.98),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text("Jiji", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                const Text("Your AI Friend", style: TextStyle(color: Colors.grey)),
      
                const SizedBox(height: 20),
                const JijiAvatar(),
                const SizedBox(height: 20),
      
                SearchBarWidget(
                  onSend: (query) {
                    context.read<JijiBloc>().add(SubmitQueryEvent(query));
                  },
                ),
      
                const SizedBox(height: 20),
      
                BlocBuilder<JijiBloc, JijiState>(
                  builder: (context, state) {
                    if (state is JijiLoaded) {
                      return AnswerSection(answer: state.answer);
                    }
                    return const SizedBox();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
