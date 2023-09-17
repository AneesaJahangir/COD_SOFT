import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quiz_app_task/model/question.dart';

class CheckAnswersPage extends StatelessWidget {
  final List<Question> questions;
  final Map<int,dynamic> answers;

  const CheckAnswersPage({Key? key, required this.questions, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Check Answer'),
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
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange.shade100,
              ),
              height: 200,
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: questions.length+1,
            itemBuilder: _buildItem,

          )
        ],
      ),
    );
  }
  Widget _buildItem(BuildContext context, int index) {
    if(index == questions.length) {
      return   Container(
          margin: EdgeInsets.only(top: 20.0),
        child:ElevatedButton(
        child: Text("Done"),
        onPressed: (){
          Navigator.of(context).popUntil(ModalRoute.withName(Navigator.defaultRouteName));
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
      ),
      );
    }
    Question question = questions[index];
    bool correct = question.answer == answers[index];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text((question.text!), style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0
            ),),
            SizedBox(height: 5.0),
            Text(("${answers[index]}"), style: TextStyle(
                color: correct ? Colors.green : Colors.red,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5.0),
            correct ? Container(): Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Answer: "),
                  TextSpan(text: (question.solution!) , style: TextStyle(
                      fontWeight: FontWeight.w500
                  ))
                ]
            ),style: TextStyle(
                fontSize: 16.0
            ),)
          ],
        ),
      ),
    );
  }
}