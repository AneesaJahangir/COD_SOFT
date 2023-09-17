import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_task/data/questions.dart';
import 'package:quiz_app_task/model/category.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app_task/model/category.dart';
import 'package:quiz_app_task/model/question.dart';

final List<Category> categories = [
  Category(
    categoryName: 'Physics',
    imageUrl: 'assets/physics.png',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.rocket,
    description: 'Practice questions from various chapters in physics',
    questions: physicsQuestions,
  ),
  Category(
    categoryName: 'Chemistry',
    imageUrl: 'assets/chemistry.png',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.atom,
    description: 'Practice questions from various chapters in chemistry',
    questions: chemistryQuestions,
  ),
  Category(
    imageUrl: 'assets/maths.png',
    categoryName: 'Maths',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions from various chapters in maths',
    questions: mathQuestions,
  ),
  Category(
    imageUrl: 'assets/biology.png',
    categoryName: 'Biology',
    backgroundColor: Colors.lightGreen,
    icon: FontAwesomeIcons.dna,
    description: 'Practice questions from various chapters in biology',
    questions: biologyQuestions,
  ),
];