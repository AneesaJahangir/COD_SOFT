import 'package:flutter/material.dart';
import 'package:quiz_app_task/model/option.dart';
import 'package:quiz_app_task/model/question.dart';
import 'package:quiz_app_task/utils.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    required this.question,
    required this.onClickedOption,
  });

  @override
  Widget build(BuildContext context) => ListView(
    physics: BouncingScrollPhysics(),
    children: Utils.heightBetween(
      question.options.map((option) => buildOption(context, option)).toList(),
      height: 7,
    ),
  );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    final borderColor = getBorderColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor, // Choose your border color
            width: 1.5,           // Choose the border width
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            buildSolution(question.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) => Container(
    height: 35,
    child: Row(children: [
      Text(
        option.code,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      SizedBox(width: 12),
      Text(
        option.text,
        style: TextStyle(fontSize: 16),
      )
    ]),
  );

  Widget buildSolution(Option? solution, Option answer) {
    if (solution == null) {
      return Container(); // Handle the case where solution is null
    } else if (solution == answer) {
      return Text(
        question.solution,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return Colors.orange.shade100;
    } else {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  }
}

Color getBorderColorForOption(Option option, Question question) {
  final isSelected = option == question.selectedOption;

  if (!isSelected) {
    return Colors.deepOrange; // Border color for unselected options
  } else {
    return option.isCorrect ? Colors.green : Colors.red; // Border color for selected options
  }
}