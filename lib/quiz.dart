import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<String> questions;
  final int qindex;
  final Function answerQuestion;

  int initialVal = 0;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.qindex,
  });

  int currentFeedbackValue = 1;

  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
    print(currentFeedbackValue);
  }

//   @override
//   _QuizState createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   var qindex;

  @override
  Widget build(BuildContext context) {
    // double score = 0;
    // return Slider(
    //   value: score,
    //   divisions: 4,
    //   onChanged: (double newScore) {
    //     setState(() {
    //       score = newScore;
    //     });
    //   },
    // );
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(questions[qindex]),
            Answer(
              selectHandler: setFeedbackValue,
              initialValue: initialVal,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(currentFeedbackValue),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
