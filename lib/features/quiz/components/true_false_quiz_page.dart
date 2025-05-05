import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/pages/true_false/ResultPageVF.dart';
import 'package:ma3rifatiiapp/features/quiz/quiz_type_page.dart';
import 'package:ma3rifatiiapp/features/quiz/models/quoistionClassVF.dart';

class TrueFalseQuizPage extends StatefulWidget {
  final List<Question> questions;
  final String sectionTitle;
  final int sectionNumber;
  final String level;

  const TrueFalseQuizPage({
    super.key,
    required this.questions,
    required this.sectionTitle,
    required this.sectionNumber,
    required this.level,
  });

  @override
  State<TrueFalseQuizPage> createState() => _TrueFalseQuizPageState();
}

class _TrueFalseQuizPageState extends State<TrueFalseQuizPage> {
  int currentQuestionIndex = 0;
  Color nextButtonColor = Colors.white.withOpacity(0.2);
  int timeLeft = 15;
  Timer? timer;
  bool answerSelected = false;
  List<bool> userAnswers = [];
  List<bool> isCorrectList = [];
  List<String> correctAnswersExplanation = [];
  int totalTimeSpent = 0;

  Color trueButtonColor = Colors.white.withOpacity(0.2);
  Color falseButtonColor = Colors.white.withOpacity(0.2);

  void startTimer() {
    timeLeft = 15;
    answerSelected = false;
    nextButtonColor = Colors.white.withOpacity(0.2);
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else if (!answerSelected) {
          timer.cancel();
          isCorrectList.add(false);
          userAnswers.add(false);
          correctAnswersExplanation.add(
              widget.questions[currentQuestionIndex].explanation);
          moveToNextQuestion();
        }
      });
    });
  }

  void moveToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < widget.questions.length - 1) {
        currentQuestionIndex++;
        startTimer();
        trueButtonColor = Colors.white.withOpacity(0.2);
        falseButtonColor = Colors.white.withOpacity(0.2);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              isCorrectList: isCorrectList,
              userAnswers: userAnswers,
              totalQuestions: widget.questions.length,
              timeSpent: totalTimeSpent,
              correctAnswersExplanation: correctAnswersExplanation,
            ),
          ),
        );
      }
    });
  }

  void checkAnswer(bool userAnswer) {
    timer?.cancel();

    final isCorrect = userAnswer == widget.questions[currentQuestionIndex].questionAnswer;

    setState(() {
      answerSelected = true;
      userAnswers.add(userAnswer);
      isCorrectList.add(isCorrect);
      correctAnswersExplanation.add(widget.questions[currentQuestionIndex].explanation);

      if (userAnswer) {
        trueButtonColor = Colors.orange;
        falseButtonColor = Colors.white.withOpacity(0.2);
      } else {
        falseButtonColor = Colors.orange;
        trueButtonColor = Colors.white.withOpacity(0.2);
      }

      totalTimeSpent += (15 - timeLeft);
      nextButtonColor = Colors.orange;
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double progressWidth = (currentQuestionIndex / widget.questions.length) *
        MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF9D7AFF),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        timer?.cancel();
                        setState(() {
                          isCorrectList.clear();
                          userAnswers.clear();
                          correctAnswersExplanation.clear();
                          totalTimeSpent = 0;
                          currentQuestionIndex = 0;
                          trueButtonColor = Colors.white.withOpacity(0.2);
                          falseButtonColor = Colors.white.withOpacity(0.2);
                          nextButtonColor = Colors.white.withOpacity(0.2);
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NiveauPage()),
                        );
                      },
                      child: const Icon(Icons.close, color: Colors.white, size: 27),
                    ),
                    Text(
                      widget.sectionTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '$timeLeft',
                          style: const TextStyle(
                            color: Color(0xFF9D7AFF),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Stack(
                  children: [
                    Container(height: 8, color: Colors.deepPurple),
                    Container(
                      height: 8,
                      width: progressWidth,
                      color: Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      widget.questions[currentQuestionIndex].questionText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF1E0C53),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => checkAnswer(true),
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: trueButtonColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Vrai',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => checkAnswer(false),
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: falseButtonColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Faux',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (answerSelected) {
                      moveToNextQuestion();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: nextButtonColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        currentQuestionIndex < widget.questions.length - 1
                            ? 'Suivant'
                            : 'Terminer',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}