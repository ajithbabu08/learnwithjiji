import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnwithjiji/features/jiji_ai/presentation/widgets/resource.dart';

class AnswerSection extends StatelessWidget {
  const AnswerSection({super.key, required this.answer});

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Jiji says",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Retrieval-Augmented Generation (RAG) ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text:
                      "combines search with large language models to improve the accuracy of generated answers by providing relevant information from external data sources.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("• Retrieves data from external sources",
              style: TextStyle(color: Colors.black.withOpacity(0.7)),),
               Text(
                "• Uses a language model to generate answers",
                style: TextStyle(color: Colors.black.withOpacity(0.7)),
              ),
             Text("• Enhances the accuracy of responses",
              style: TextStyle(color: Colors.black.withOpacity(0.7)),),
            ],
          ),

          const SizedBox(height: 20),
          ResourceCard(
            icon: FontAwesomeIcons.solidFilePowerpoint,
            iconColor: Colors.orange,
            title: "Presentation on RAG",
            button: "Open",
            subtitle: 'PowerPoint Presentation',
            buttonColor: Colors.teal.shade300,
          ),
          const SizedBox(height: 10),
          ResourceCard(
            icon: FontAwesomeIcons.youtube,
            iconColor: Colors.red,
            title: "What is RAG? Retrivel..",
            button: "Watch",
            subtitle: 'YouTube video',
            buttonColor: Colors.blue.shade400,
          ),
        ],
      ),
    );
  }
}
