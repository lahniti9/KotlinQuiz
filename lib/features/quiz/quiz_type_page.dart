import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ma3rifatiiapp/features/quiz/pages/true_false/conceptsAvancesVFQuestionsPage.dart';
import 'package:ma3rifatiiapp/features/quiz/pages/true_false/fondamentauxKotlinVFQuestionsPage.dart';
import 'package:ma3rifatiiapp/features/quiz/pages/true_false/principesOOPVFQuestionsPage.dart';
import 'package:ma3rifatiiapp/features/quiz/pages/true_false/programmationFonctionnelleVFQuestionsPage.dart';

class NiveauPage extends StatefulWidget {
  const NiveauPage({super.key});

  @override
  State<NiveauPage> createState() => _NiveauPageState();
}

class _NiveauPageState extends State<NiveauPage> {
  void _navigateToSection(int section) {
    switch (section) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                Fondamentauxkotlinpage(sectionNumber: section, level: '',),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Principesooppage(sectionNumber: section, level: '',),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                Programmationfonctionnelle(sectionNumber: section, level: '',),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Conceptsavances(sectionNumber: section, level: '',),
          ),
        );
        break;
    }
  }
  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Exit App'),
        content: Text('Are you sure you want to exit the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(), // Cancel
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => exit(0), // Exit app
            child: Text('Exit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF9D7AFF),
      brightness: Theme.of(context).brightness,
    );

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF9D7AFF),
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Sections Principales',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
         actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => _showExitDialog(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Choisissez une section pour commencer le quiz',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface.withOpacity(0.8),
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          ...List.generate(4, (index) {
            final sections = [
              {
                'number': 1,
                'title': 'Fondamentaux de Kotlin',
                'description': 'Maîtrisez les bases du langage Kotlin',
                'icon': Icons.code_rounded,
                'color': const Color(0xFFFFA726),
              },
              {
                'number': 2,
                'title': 'Programmation Orientée Objet',
                'description': 'Apprenez les principes de la POO',
                'icon': Icons.account_tree_rounded,
                'color': const Color(0xFF53C9BE),
              },
              {
                'number': 3,
                'title': 'Programmation Fonctionnelle',
                'description': 'Découvrez les fonctions avancées',
                'icon': Icons.functions_rounded,
                'color': const Color(0xFF9C27B0),
              },
              {
                'number': 4,
                'title': 'Concepts Avancés',
                'description': 'Techniques expertes en Kotlin',
                'icon': Icons.auto_awesome_rounded,
                'color': const Color(0xFF4CAF50),
              },
            ];

            final section = sections[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _ModernSectionCard(
                sectionNumber: section['number'] as int,
                title: section['title'] as String,
                description: section['description'] as String,
                icon: section['icon'] as IconData,
                iconColor: section['color'] as Color,
                onTap: () => _navigateToSection(section['number'] as int),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ModernSectionCard extends StatelessWidget {
  final int sectionNumber;
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const _ModernSectionCard({
    required this.sectionNumber,
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: colorScheme.outline.withOpacity(0.2),
          width: 1,
        ),
      ),
      color: colorScheme.surfaceContainerLow,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        splashFactory: InkRipple.splashFactory,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Section $sectionNumber',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: colorScheme.onSurface.withOpacity(0.5),
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
