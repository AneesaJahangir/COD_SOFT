import 'package:flutter/cupertino.dart';

import 'option.dart';

class Question {
  final String text;
  final List<Option> options;
  final String solution;
  final String answer;
  bool isLocked;
  Option? selectedOption; // Add the ? to mark it as nullable

  Question({
    required this.text,
    required this.options,
    required this.solution,
    required this.answer,
    this.isLocked = false,
    this.selectedOption,
  });
}
