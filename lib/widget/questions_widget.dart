import 'package:flutter/material.dart';
import 'package:quiz_app_task/model/category.dart';
import 'package:quiz_app_task/model/option.dart';
import 'package:quiz_app_task/model/question.dart';
import 'package:quiz_app_task/page/quizfinished.dart';
import 'package:quiz_app_task/widget/options_widget.dart';

class QuestionsWidget extends StatefulWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option?> onClickedOption;

  const QuestionsWidget({
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption,
  });

  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  bool isLastQuestion = false;
  Map<int, dynamic> questionAnswers = {};

  void initState() {
    super.initState();
    // Initialize the map with an empty value for each question
    questionAnswers = Map.fromIterable(
      widget.category.questions,
      key: (question) => widget.category.questions.indexOf(question),
      value: (question) => null,
    );
    checkIfLastQuestion(widget.controller.initialPage);
  }

  void checkIfLastQuestion(int pageIndex) {
    setState(() {
      isLastQuestion = pageIndex == widget.category.questions.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (index) {
        widget.onChangedPage(index);
        checkIfLastQuestion(index);
      },
      controller: widget.controller,
      itemCount: widget.category.questions.length,
      itemBuilder: (context, index) {
        final question = widget.category.questions[index];

        return buildQuestion(question: question, questionIndex: index);
      },
    );
  }

  Widget buildQuestion({
    required Question question,
    required int questionIndex,
  }) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              question.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Choose your answer from below',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
            SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: (option) {
                  widget.onClickedOption(option);
                  questionAnswers[questionIndex] = option != null ? option.text : question.solution;
                  print("Question Answers: $questionAnswers");
                },
              ),
            ),
            // Conditionally show the "Submit" button on the last question
            if (isLastQuestion)
              Container(
                margin: EdgeInsets.only(top: 5.0), // Set the top margin as needed
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Question Answers before navigation: $questionAnswers");
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => QuizFinishedPage(
                          questions: widget.category.questions,
                          answers: questionAnswers,
                        ),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 40.0),
                      ),
                    ),
                    child: Text('Submit'),
                  ),
                ),
              )

          ],
        ),
      );
}
