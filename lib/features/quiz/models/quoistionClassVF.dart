class Question {
  final String questionText;
  final bool questionAnswer;
  final String explanation; // Nouvel attribut pour l'explication

  // Constructeur pour les questions
  Question({
    required this.questionText,
    required this.questionAnswer,
    required this.explanation, // Ajout de l'explication au constructeur
  });

  static List<Question> questionsVFFondamentauxKotlin = [
    Question(
      questionText: "Kotlin est un langage de programmation statiquement typé.",
      questionAnswer: true,
      explanation:
          "Cela signifie que le type des variables est vérifié au moment de la compilation.",
    ),
    Question(
      questionText:
          "Les variables déclarées avec `val` peuvent être modifiées.",
      questionAnswer: false,
      explanation:
          "Les variables déclarées avec `val` sont immuables et ne peuvent pas être modifiées.",
    ),
    Question(
      questionText: "Kotlin n'a pas de type de données pour les listes.",
      questionAnswer: false,
      explanation:
          "Kotlin a des types de données pour les listes, comme `List`, `MutableList`, etc.",
    ),
    Question(
      questionText:
          "La méthode `println()` est utilisée pour afficher du texte à la console.",
      questionAnswer: true,
      explanation:
          "Cette méthode permet d'afficher des messages dans la console.",
    ),
    Question(
      questionText: "Les chaînes de caractères en Kotlin sont immuables.",
      questionAnswer: true,
      explanation:
          "Cela signifie que, une fois créées, elles ne peuvent pas être modifiées.",
    ),
    Question(
      questionText:
          "Un `when` est utilisé pour les instructions conditionnelles.",
      questionAnswer: true,
      explanation:
          "L'instruction `when` permet de faire des sélections conditionnelles.",
    ),
    Question(
      questionText: "Kotlin ne supporte pas les fonctions d'extension.",
      questionAnswer: false,
      explanation:
          "Kotlin prend en charge les fonctions d'extension qui permettent d'ajouter des fonctionnalités à des classes existantes.",
    ),
    Question(
      questionText:
          "Les classes en Kotlin peuvent être déclarées comme `open` pour permettre l'héritage.",
      questionAnswer: true,
      explanation: "Le mot-clé `open` permet à une classe d'être héritée.",
    ),
    Question(
      questionText:
          "Les tableaux en Kotlin sont dynamiques et peuvent changer de taille.",
      questionAnswer: false,
      explanation:
          "Les tableaux en Kotlin ont une taille fixe, mais on peut utiliser des listes pour une taille dynamique.",
    ),
    Question(
      questionText:
          "On peut utiliser `==` pour comparer des valeurs en Kotlin.",
      questionAnswer: true,
      explanation:
          "L'opérateur `==` compare les valeurs, tandis que `===` compare les références.",
    ),
    Question(
      questionText: "Kotlin n'autorise pas la surcharge de fonctions.",
      questionAnswer: false,
      explanation:
          "Kotlin permet la surcharge de fonctions avec des signatures différentes.",
    ),
    Question(
      questionText: "Une fonction peut avoir plusieurs paramètres en Kotlin.",
      questionAnswer: true,
      explanation:
          "Les fonctions peuvent être définies avec plusieurs paramètres.",
    ),
    Question(
      questionText:
          "Les types nullables en Kotlin doivent être déclarés avec un `?`.",
      questionAnswer: true,
      explanation:
          "Pour déclarer un type nullable, on utilise le symbole `?` après le type.",
    ),
    Question(
      questionText: "Le mot-clé `fun` est utilisé pour déclarer une fonction.",
      questionAnswer: true,
      explanation: "On utilise `fun` pour définir des fonctions en Kotlin.",
    ),
    Question(
      questionText: "Les `data classes` ne peuvent pas contenir de méthodes.",
      questionAnswer: false,
      explanation:
          "Les `data classes` peuvent contenir des méthodes, en plus des propriétés.",
    ),
    Question(
      questionText: "Les opérateurs en Kotlin peuvent être surchargés.",
      questionAnswer: true,
      explanation:
          "Kotlin permet la surcharge d'opérateurs pour personnaliser leur comportement.",
    ),
    Question(
      questionText:
          "Kotlin utilise des accolades pour définir les blocs de code.",
      questionAnswer: true,
      explanation: "Les blocs de code sont définis à l'aide d'accolades `{}`.",
    ),
    Question(
      questionText: "Les `sealed classes` peuvent avoir des sous-classes.",
      questionAnswer: true,
      explanation:
          "Les `sealed classes` permettent de définir des hiérarchies de classes restreintes.",
    ),
    Question(
      questionText: "Un `lambda` est une fonction sans nom.",
      questionAnswer: true,
      explanation:
          "Un lambda est une fonction anonyme pouvant être utilisée comme une expression.",
    ),
    Question(
      questionText:
          "Les méthodes `map` et `filter` ne peuvent pas être utilisées sur des collections.",
      questionAnswer: false,
      explanation:
          "Ces méthodes peuvent être utilisées pour transformer ou filtrer des collections.",
    ),
  ];

  static List<Question> questionsVFPrincipesOOP = [
    Question(
      questionText: "Kotlin prend en charge la programmation orientée objet.",
      questionAnswer: true,
      explanation:
          "Kotlin est conçu pour être un langage orienté objet avec des classes et des objets.",
    ),
    Question(
      questionText:
          "Les classes en Kotlin peuvent avoir des constructeurs secondaires.",
      questionAnswer: true,
      explanation:
          "Kotlin permet de définir des constructeurs secondaires pour plus de flexibilité.",
    ),
    Question(
      questionText:
          "Une classe ne peut pas hériter d'une autre classe en Kotlin.",
      questionAnswer: false,
      explanation:
          "Les classes en Kotlin peuvent hériter d'autres classes, sauf si elles sont marquées comme `final`.",
    ),
    Question(
      questionText:
          "Les interfaces en Kotlin peuvent contenir des implémentations par défaut.",
      questionAnswer: true,
      explanation:
          "Les interfaces peuvent avoir des méthodes avec des implémentations par défaut.",
    ),
    Question(
      questionText: "Un objet en Kotlin est une instance d'une classe.",
      questionAnswer: true,
      explanation:
          "Chaque instance d'une classe est considérée comme un objet.",
    ),
    Question(
      questionText:
          "Les classes abstraites ne peuvent pas être instanciées directement.",
      questionAnswer: true,
      explanation:
          "Les classes abstraites doivent être héritées pour être utilisées.",
    ),
    Question(
      questionText: "L'héritage multiple est supporté en Kotlin.",
      questionAnswer: false,
      explanation:
          "Kotlin ne supporte pas l'héritage multiple, mais utilise des interfaces pour une flexibilité similaire.",
    ),
    Question(
      questionText:
          "Les propriétés d'une classe peuvent avoir des accesseurs personnalisés.",
      questionAnswer: true,
      explanation:
          "Kotlin permet de définir des accesseurs personnalisés pour les propriétés.",
    ),
    Question(
      questionText: "Les données d'une classe sont toujours publiques.",
      questionAnswer: false,
      explanation:
          "Les propriétés peuvent être privées, publiques ou protégées selon le besoin.",
    ),
    Question(
      questionText: "Une interface ne peut pas hériter d'une autre interface.",
      questionAnswer: false,
      explanation: "Une interface peut hériter d'autres interfaces en Kotlin.",
    ),
    Question(
      questionText:
          "On peut définir des méthodes de classe avec le mot-clé `companion`.",
      questionAnswer: true,
      explanation:
          "Le mot-clé `companion` permet de définir des méthodes et des propriétés associées à la classe.",
    ),
    Question(
      questionText:
          "Les classes en Kotlin peuvent être `final` pour empêcher l'héritage.",
      questionAnswer: true,
      explanation:
          "En marquant une classe comme `final`, on empêche d'autres classes d'en hériter.",
    ),
    Question(
      questionText:
          "Les propriétés peuvent être définies avec une valeur par défaut.",
      questionAnswer: true,
      explanation:
          "Kotlin permet de définir des valeurs par défaut pour les propriétés de classe.",
    ),
    Question(
      questionText:
          "On peut définir des fonctions d'extension pour les classes.",
      questionAnswer: true,
      explanation:
          "Les fonctions d'extension permettent d'ajouter des méthodes à des classes existantes.",
    ),
    Question(
      questionText: "Les classes peuvent avoir des propriétés privées.",
      questionAnswer: true,
      explanation:
          "Les propriétés d'une classe peuvent être déclarées comme privées.",
    ),
    Question(
      questionText:
          "Les interfaces en Kotlin ne peuvent pas avoir de propriétés.",
      questionAnswer: false,
      explanation:
          "Les interfaces peuvent avoir des propriétés abstraites en Kotlin.",
    ),
    Question(
      questionText:
          "Les données peuvent être modifiées directement dans une classe.",
      questionAnswer: true,
      explanation:
          "Les propriétés d'une classe peuvent être modifiées selon leur niveau d'accès.",
    ),
    Question(
      questionText:
          "Les annotations ne peuvent pas être utilisées dans les classes.",
      questionAnswer: false,
      explanation:
          "Kotlin supporte l'utilisation des annotations dans les classes.",
    ),
    Question(
      questionText: "Les classes scellées peuvent avoir des sous-classes.",
      questionAnswer: true,
      explanation:
          "Les classes scellées limitent l'héritage à un ensemble défini de sous-classes.",
    ),
    Question(
      questionText: "Un `object` est une classe avec une seule instance.",
      questionAnswer: true,
      explanation:
          "Le mot-clé `object` permet de créer des classes singleton en Kotlin.",
    ),
  ];

  static List<Question> questionsVFProgrammationFonctionnelle = [
    Question(
      questionText: "Kotlin supporte la programmation fonctionnelle.",
      questionAnswer: true,
      explanation:
          "Kotlin prend en charge les concepts de la programmation fonctionnelle, y compris les fonctions d'ordre supérieur et les lambdas.",
    ),
    Question(
      questionText: "Les fonctions peuvent être passées comme arguments.",
      questionAnswer: true,
      explanation:
          "En Kotlin, les fonctions peuvent être passées comme arguments à d'autres fonctions, ce qui est un aspect clé des fonctions d'ordre supérieur.",
    ),
    Question(
      questionText:
          "Les `higher-order functions` ne peuvent pas retourner d'autres fonctions.",
      questionAnswer: false,
      explanation:
          "Les `higher-order functions` peuvent retourner d'autres fonctions en tant que résultats.",
    ),
    Question(
      questionText:
          "Les fonctions lambda peuvent capturer des variables de leur portée.",
      questionAnswer: true,
      explanation:
          "Les lambdas en Kotlin peuvent capturer des variables de la portée dans laquelle elles sont définies.",
    ),
    Question(
      questionText:
          "La fonction `let` peut être utilisée pour exécuter du code sur un objet.",
      questionAnswer: true,
      explanation:
          "La fonction `let` permet d'exécuter un bloc de code sur un objet tout en retournant le résultat du bloc.",
    ),
    Question(
      questionText: "La fonction `apply` retourne toujours `Unit`.",
      questionAnswer: false,
      explanation:
          "`apply` retourne l'objet sur lequel il est appliqué, pas `Unit`.",
    ),
    Question(
      questionText: "`map` transforme chaque élément d'une collection.",
      questionAnswer: true,
      explanation:
          "La fonction `map` applique une transformation à chaque élément d'une collection et retourne une nouvelle collection.",
    ),
    Question(
      questionText:
          "`filter` retourne uniquement les éléments qui satisfont une condition.",
      questionAnswer: true,
      explanation:
          "`filter` retourne une nouvelle liste contenant uniquement les éléments qui satisfont le prédicat donné.",
    ),
    Question(
      questionText:
          "`fold` est utilisé pour réduire une collection à une seule valeur.",
      questionAnswer: true,
      explanation:
          "`fold` accumule une valeur en appliquant une fonction sur tous les éléments d'une collection.",
    ),
    Question(
      questionText: "`run` retourne l'objet récepteur.",
      questionAnswer: false,
      explanation:
          "`run` retourne le résultat du bloc exécuté, pas l'objet récepteur.",
    ),
    Question(
      questionText: "Les fonctions anonymes n'ont pas de nom.",
      questionAnswer: true,
      explanation:
          "Les fonctions anonymes sont des fonctions sans nom qui peuvent être utilisées comme valeurs.",
    ),
    Question(
      questionText: "Une `lambda` peut être assignée à une variable.",
      questionAnswer: true,
      explanation:
          "Les lambdas peuvent être assignées à des variables et appelées plus tard comme des fonctions.",
    ),
    Question(
      questionText:
          "La fonction `with` modifie directement l'objet passé sans retour.",
      questionAnswer: false,
      explanation:
          "`with` retourne le résultat du bloc exécuté, elle ne modifie pas directement l'objet sans retour.",
    ),
    Question(
      questionText: "`takeIf` retourne l'objet si une condition est vraie.",
      questionAnswer: true,
      explanation:
          "`takeIf` retourne l'objet s'il satisfait une condition donnée, sinon retourne null.",
    ),
    Question(
      questionText: "Une lambda ne peut pas avoir de paramètres.",
      questionAnswer: false,
      explanation:
          "Les lambdas peuvent avoir zéro, un ou plusieurs paramètres.",
    ),
    Question(
      questionText: "`also` retourne toujours `Unit`.",
      questionAnswer: false,
      explanation:
          "`also` retourne l'objet sur lequel il est appelé, utile pour des effets secondaires.",
    ),
    Question(
      questionText:
          "`takeWhile` prend des éléments tant qu'une condition est vraie.",
      questionAnswer: true,
      explanation:
          "`takeWhile` retourne les premiers éléments d'une collection tant que la condition est vraie.",
    ),
    Question(
      questionText: "`drop` enlève un nombre donné d'éléments depuis le début.",
      questionAnswer: true,
      explanation:
          "`drop(n)` enlève les `n` premiers éléments d'une collection.",
    ),
    Question(
      questionText: "`distinct` retourne une liste avec des doublons.",
      questionAnswer: false,
      explanation: "`distinct` supprime les doublons dans une collection.",
    ),
    Question(
      questionText:
          "`reduce` est similaire à `fold` mais sans valeur initiale.",
      questionAnswer: true,
      explanation:
          "`reduce` accumule une valeur à partir du premier élément, contrairement à `fold` qui prend une valeur initiale.",
    ),
  ];

  static List<Question> questionsVFConceptsAvancesKotlin = [
    Question(
      questionText: "Kotlin est entièrement interopérable avec Java.",
      questionAnswer: true,
      explanation:
          "Kotlin est conçu pour être interopérable avec Java, permettant d'utiliser des bibliothèques Java dans le code Kotlin.",
    ),
    Question(
      questionText:
          "Les coroutines permettent de gérer la concurrence de manière simple.",
      questionAnswer: true,
      explanation:
          "Les coroutines en Kotlin facilitent l'écriture de code asynchrone et concurrent de manière simple et lisible.",
    ),
    Question(
      questionText: "Kotlin n'a pas de système de type de données.",
      questionAnswer: false,
      explanation:
          "Kotlin a un système de type de données robuste qui inclut des types de base, des types immuables et des types génériques.",
    ),
    Question(
      questionText:
          "Les `suspend functions` peuvent être appelées sans contexte de coroutine.",
      questionAnswer: false,
      explanation:
          "Les `suspend functions` doivent être appelées à l'intérieur d'une coroutine ou d'une autre `suspend function`.",
    ),
    Question(
      questionText: "Les modules Kotlin peuvent être configurés avec Gradle.",
      questionAnswer: true,
      explanation:
          "Gradle est l'outil de construction recommandé pour gérer les modules Kotlin et leurs dépendances.",
    ),
    Question(
      questionText:
          "Kotlin permet l'utilisation d'annotations pour la programmation réflexive.",
      questionAnswer: true,
      explanation:
          "Kotlin prend en charge les annotations, ce qui permet d'utiliser la programmation réflexive et de créer des métadonnées.",
    ),
    Question(
      questionText:
          "Les tests unitaires ne peuvent pas être effectués en Kotlin.",
      questionAnswer: false,
      explanation:
          "Kotlin prend en charge les tests unitaires, permettant d'utiliser des frameworks de tests comme JUnit.",
    ),
    Question(
      questionText: "Les types immuables améliorent la sécurité du code.",
      questionAnswer: true,
      explanation:
          "Les types immuables en Kotlin aident à prévenir les erreurs liées à l'état mutable, améliorant ainsi la sécurité du code.",
    ),
    Question(
      questionText: "Kotlin ne supporte pas les types d'extension.",
      questionAnswer: false,
      explanation:
          "Kotlin prend en charge les types d'extension, permettant d'ajouter de nouvelles fonctionnalités aux classes existantes.",
    ),
    Question(
      questionText:
          "Les `sealed classes` peuvent être utilisées pour contrôler le flux d'exécution.",
      questionAnswer: true,
      explanation:
          "Les `sealed classes` permettent de limiter les sous-types, facilitant ainsi le contrôle du flux d'exécution dans le code.",
    ),
    Question(
      questionText:
          "Kotlin n'a pas de support pour les DSL (Domain-Specific Languages).",
      questionAnswer: false,
      explanation:
          "Kotlin est particulièrement adapté à la création de DSL grâce à sa syntaxe expressive et à ses fonctions d'extension.",
    ),
    Question(
      questionText:
          "Les délégués de propriété simplifient la gestion des propriétés.",
      questionAnswer: true,
      explanation:
          "Les délégués de propriété en Kotlin simplifient la gestion des propriétés en fournissant des comportements prédéfinis.",
    ),
    Question(
      questionText:
          "Les modules Kotlin peuvent être facilement intégrés avec d'autres technologies.",
      questionAnswer: true,
      explanation:
          "Kotlin peut s'intégrer facilement avec d'autres technologies, y compris des frameworks de développement web et mobile.",
    ),
    Question(
      questionText: "Kotlin n'a pas de support pour la gestion des exceptions.",
      questionAnswer: false,
      explanation:
          "Kotlin offre un support complet pour la gestion des exceptions avec des blocs try/catch/finally.",
    ),
    Question(
      questionText:
          "Les fonctions de portée (scope functions) aident à gérer le contexte.",
      questionAnswer: true,
      explanation:
          "Les fonctions de portée aident à gérer le contexte de l'objet sur lequel elles sont appelées, améliorant la lisibilité du code.",
    ),
    Question(
      questionText:
          "Les extensions de fonctions ne peuvent pas accéder aux propriétés privées.",
      questionAnswer: true,
      explanation:
          "Les extensions de fonctions ne peuvent pas accéder aux propriétés privées des classes, respectant l'encapsulation.",
    ),
    Question(
      questionText:
          "Les coroutines peuvent améliorer la réactivité des applications.",
      questionAnswer: true,
      explanation:
          "Les coroutines permettent de maintenir la réactivité des applications tout en effectuant des tâches de fond.",
    ),
    Question(
      questionText:
          "Les objets de données (data classes) sont conçus pour des classes immuables.",
      questionAnswer: true,
      explanation:
          "Les objets de données sont conçus pour stocker des données et sont souvent immuables, offrant des méthodes de génération de code utiles.",
    ),
    Question(
      questionText:
          "La réflexion (reflection) permet d’inspecter et de modifier le code à l’exécution.",
      questionAnswer: true,
      explanation:
          "Kotlin prend en charge la réflexion, ce qui permet d’accéder aux propriétés, méthodes, et constructeurs d’une classe à l’exécution.",
    ),
    Question(
      questionText:
          "Une `inline function` en Kotlin est plus lente qu’une fonction normale.",
      questionAnswer: false,
      explanation:
          "Les `inline functions` sont conçues pour améliorer les performances en remplaçant les appels de fonction par leur corps à la compilation.",
    ),
  ];
}
