// features/quiz/pages/true_false/principesOOPVFQuestionsPage.dart
import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/components/true_false_quiz_page.dart';
import 'package:ma3rifatiiapp/features/quiz/models/quoistionClassVF.dart';

class Principesooppage extends StatelessWidget {
  final int sectionNumber;
  final String level;

  const Principesooppage({
    super.key,
    required this.sectionNumber,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return TrueFalseQuizPage(
      questions: Question.questionsVFPrincipesOOP,
      sectionTitle: 'Programmation Orientée Objet',
      sectionNumber: sectionNumber,
      level: level,
    );
  }
}