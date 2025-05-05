// features/quiz/pages/true_false/programmationFonctionnelleVFQuestionsPage.dart
import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/components/true_false_quiz_page.dart';
import 'package:ma3rifatiiapp/features/quiz/models/quoistionClassVF.dart';

class Programmationfonctionnelle extends StatelessWidget {
  final int sectionNumber;
  final String level;

  const Programmationfonctionnelle({
    super.key,
    required this.sectionNumber,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return TrueFalseQuizPage(
      questions: Question.questionsVFProgrammationFonctionnelle,
      sectionTitle: 'Programmation Fonctionnelle',
      sectionNumber: sectionNumber,
      level: level,
    );
  }
}