import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/quiz_type_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0; // Variable d'état pour suivre la page actuelle

  // Liste des titres et descriptions
  final List<Map<String, String>> _content = [
    {
      "title": "Bienvenue dans\nKotlin Quiz",
      "description":
          "Bienvenue dans Kotlin Quiz, l'application parfaite pour tester vos connaissances sur le langage de programmation Kotlin."
    },
    {
      "title": "Testez vos connaissances",
      "description":
          "Répondez à une série de questions sur différents aspects de Kotlin, allant des concepts de base aux sujets avancés."
    },
    {
      "title": "Suivez vos résultats",
      "description":
          "Après chaque quiz, consultez vos résultats pour voir où vous excellez et où vous pouvez vous améliorer."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9B7DF2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                'assets/image1.png',
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 300, // تحديد العرض الثابت
                height: 330, // تحديد الارتفاع الثابت
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // لضمان توازن العناصر داخل العمود
                  children: [
                    Text(
                      _content[_currentPage]["title"]!, // Titre dynamique
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C2A43),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      // استخدام Expanded لضمان عدم تجاوز النص حدود الحاوية
                      child: SingleChildScrollView(
                        // لف النص للسماح بالتمرير إذا كان طويلاً
                        child: Text(
                          _content[_currentPage]
                              ["description"]!, // Description dynamique
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Indicateurs de progression sous la description
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: index == _currentPage
                                ? Color(0xFFFFA726) // Couleur active
                                : Colors.grey, // Couleur inactive
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_currentPage < _content.length - 1) {
                            _currentPage++; // Passer à la page suivante
                          } else {
                            // Naviguer vers la page des niveaux de test
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NiveauPage()),
                            );
                          }
                        });
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xFFFFA726),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}