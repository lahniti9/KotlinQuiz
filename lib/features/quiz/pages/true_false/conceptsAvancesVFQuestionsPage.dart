// features/quiz/pages/true_false/conceptsAvancesVFQuestionsPage.dart
import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/components/true_false_quiz_page.dart';
import 'package:ma3rifatiiapp/features/quiz/models/quoistionClassVF.dart';

class Conceptsavances extends StatelessWidget {
  final int sectionNumber;
  final String level;

  const Conceptsavances({
    super.key,
    required this.sectionNumber,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return TrueFalseQuizPage(
      questions: Question.questionsVFConceptsAvancesKotlin,
      sectionTitle: 'Concepts Avancés',
      sectionNumber: sectionNumber,
      level: level,
    );
  }
}