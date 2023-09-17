import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:quiz_app_task/model/question.dart';
import 'package:quiz_app_task/page/checkanswer.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:lottie/lottie.dart';

class QuizFinishedPage extends StatefulWidget {
  final List<Question> questions;
  final Map<int, dynamic> answers;

  QuizFinishedPage({Key? key, required this.questions, required this.answers})
      : super(key: key);

  @override
  _QuizFinishedPageState createState() => _QuizFinishedPageState();
}

class _QuizFinishedPageState extends State<QuizFinishedPage> {
  int? correctAnswers;
  int correct1 = 0;
  @override
  void initState() {
    super.initState();
    // Use Future.delayed to access context after initState has completed.
    Future.delayed(Duration.zero, () {
      calculateCorrectAnswers();
      double scorePercentage = (correct1 / widget.questions.length * 100);
      if (scorePercentage > 60) {
        Dialogs.materialDialog(
          color: Colors.white,
          msg: 'Congratulations, You pass the quiz.',
          title: 'Congratulations',
          lottieBuilder: Lottie.asset(
            'assets/cong_example.json',
            fit: BoxFit.contain,
          ),
          dialogWidth: kIsWeb ? 0.3 : null,
          context: context,
          actions: [
            IconsButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Claim',
              color: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white,fontSize: 16,),
              iconColor: Colors.white,
            ),
          ],
        );
      }
      else {
        Dialogs.materialDialog(
          color: Colors.white,
          msg: 'Oppsss, You fail the quiz.',
          title: 'Try Again',
          customView: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/sad.gif',
                fit: BoxFit.contain,
                width: 170,
                height: 170,
              ),
            ],
          ),
          dialogWidth: kIsWeb ? 0.3 : null,
          context: context,
          actions: [
            IconsButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Okay',
              color: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white,fontSize: 16,),
              iconColor: Colors.white,
            ),
          ],
        );
      }
    });
  }

  void calculateCorrectAnswers() {
    this.widget.answers.forEach((index, value) {
      if (this.widget.questions[index].answer == value) correct1++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int correct = 0;
    this.widget.answers.forEach((index, value) {
      if (this.widget.questions[index].answer== value) correct++;
    });

    int incorrect = widget.questions.length - correct;

    final TextStyle titleStyle = TextStyle(
        color: Colors.black87, fontSize: 16.0, fontWeight: FontWeight.w500);
    final TextStyle trailingStyle = TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Result'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: Container(
            padding: EdgeInsets.all(3),
            alignment: Alignment.centerLeft,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.deepOrangeAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 12),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //       Theme.of(context).primaryColor,
        //       Theme.of(context).colorScheme.secondary
        //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.orange.shade100,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Total Questions", style: titleStyle),
                  trailing:
                  Text("${widget.questions.length}", style: trailingStyle),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.orange.shade100,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Score", style: titleStyle),
                  trailing: Text(
                    "${(correct / widget.questions.length * 100).toStringAsFixed(2)}%",
                    style: trailingStyle,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.orange.shade100,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Correct Answers", style: titleStyle),
                  trailing: Text(
                    "$correct/${widget.questions.length}",
                    style: trailingStyle,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.orange.shade100,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Incorrect Answers", style: titleStyle),
                  trailing: Text(
                    "$incorrect/${widget.questions.length}",
                    style: trailingStyle,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      backgroundColor:Colors.deepOrange,
                    ),
                    child: Text("Goto Home"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: TextStyle( // Use TextStyle directly within style
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      backgroundColor:Colors.deepOrange,
                    ),
                    child: Text("Check Answers"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CheckAnswersPage(
                            questions: widget.questions,
                            answers: widget.answers,
                          )));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
