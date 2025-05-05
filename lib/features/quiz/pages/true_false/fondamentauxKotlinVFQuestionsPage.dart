// features/quiz/pages/true_false/fondamentauxKotlinVFQuestionsPage.dart
import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/components/true_false_quiz_page.dart';
import 'package:ma3rifatiiapp/features/quiz/models/quoistionClassVF.dart';

class Fondamentauxkotlinpage extends StatelessWidget {
  final int sectionNumber;
  final String level;

  const Fondamentauxkotlinpage({
    super.key,
    required this.sectionNumber,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return TrueFalseQuizPage(
      questions: Question.questionsVFFondamentauxKotlin,
      sectionTitle: 'Les Fondamentaux de Kotlin',
      sectionNumber: sectionNumber,
      level: level,
    );
  }
}