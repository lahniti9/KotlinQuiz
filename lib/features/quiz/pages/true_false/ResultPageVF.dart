import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/quiz_type_page.dart';

class ResultPage extends StatefulWidget {
  final List<bool> isCorrectList;
  final List<bool> userAnswers;
  final int totalQuestions;
  final int timeSpent;
  final List<String> correctAnswersExplanation;

  const ResultPage({
    super.key,
    required this.isCorrectList,
    required this.userAnswers,
    required this.totalQuestions,
    required this.timeSpent,
    required this.correctAnswersExplanation,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late int _correctCount;
  late int _stars;
  late String _evaluationText;
  late IconData _evaluationIcon;
  late List<Widget> _resultWidgets;
  bool _resultsVisible = false;

  @override
  void initState() {
    super.initState();
    _correctCount = widget.isCorrectList.where((correct) => correct).length;
    _stars = _calculateStars(_correctCount);
    _setEvaluationData();
    _generateResultWidgets();
  }

  int _calculateStars(int correctCount) {
    final percentage = correctCount / widget.totalQuestions;
    if (percentage >= 0.9) return 4;
    if (percentage >= 0.7) return 3;
    if (percentage >= 0.5) return 2;
    return 1;
  }

  void _setEvaluationData() {
    switch (_stars) {
      case 1:
        _evaluationText = "Besoin de plus de pratique";
        _evaluationIcon = Icons.sentiment_very_dissatisfied;
        break;
      case 2:
        _evaluationText = "Pas mal!";
        _evaluationIcon = Icons.sentiment_neutral;
        break;
      case 3:
        _evaluationText = "Bon travail!";
        _evaluationIcon = Icons.sentiment_satisfied;
        break;
      case 4:
        _evaluationText = "Excellent!";
        _evaluationIcon = Icons.sentiment_very_satisfied;
        break;
      default:
        _evaluationText = "";
        _evaluationIcon = Icons.sentiment_neutral;
    }
  }

  void _generateResultWidgets() {
    _resultWidgets = List.generate(widget.totalQuestions, (i) {
      final isCorrect =
          i < widget.isCorrectList.length ? widget.isCorrectList[i] : false;

      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isCorrect
              ? Colors.green.withOpacity(0.1)
              : Colors.red.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: isCorrect ? Colors.green : Colors.red,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isCorrect ? Icons.check_circle : Icons.error,
                  color: isCorrect ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 8),
                Text(
                  'Question ${i + 1}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (!isCorrect && i < widget.correctAnswersExplanation.length) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    const SizedBox(height: 4),
                    Text(
                      'Bonne réponse: ${widget.isCorrectList[i] ? 'Vrai' : 'Faux'}',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Explication:',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.correctAnswersExplanation[i],
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: colorScheme.onSurface,
            size: 24,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NiveauPage()),
            );
          },
        ),
        title: Text(
          'Résultats',
          style: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Icon(
                      _evaluationIcon,
                      size: 60,
                      color: colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _evaluationText,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(
                            Icons.star_rounded,
                            color: index < _stars
                                ? colorScheme.primary
                                : colorScheme.outline.withOpacity(0.5),
                            size: 36,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatCard(
                          context,
                          'Score',
                          '$_correctCount/${widget.totalQuestions}',
                          Icons.quiz_outlined,
                        ),
                        _buildStatCard(
                          context,
                          'Temps',
                          '${widget.timeSpent}s',
                          Icons.timer_outlined,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const NiveauPage()),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Nouveau Quiz',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    _resultsVisible = !_resultsVisible;
                  });
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  _resultsVisible ? 'Masquer détails' : 'Voir détails',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              if (_resultsVisible) ...[
                const SizedBox(height: 32),
                Text(
                  'Détails des réponses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                ..._resultWidgets,
                const SizedBox(height: 32),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(
      BuildContext context, String title, String value, IconData icon) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outline.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, color: colorScheme.primary),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: colorScheme.onSurface.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: colorScheme.onSurface,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
