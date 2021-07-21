import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // String get resultPhrase {
  //   String resultText = "";
  //   if (resultScore <= 10) {
  //     resultText = 'We are sorry for your inconvinience';
  //     Text(
  //       "$resultText",
  //       style: TextStyle(color: Colors.red),
  //     );
  //   } else if (resultScore <= 20) {
  //     resultText = 'Hope we serve you better next time';
  //     Text(
  //       "$resultText",
  //       style: TextStyle(color: Colors.yellow),
  //     );
  //   } else if (resultScore <= 30) {
  //     resultText = 'We hope you come back next time';
  //     Text(
  //       "$resultText",
  //       style: TextStyle(color: Colors.green),
  //     );
  //   }
  //   return resultText;
  // }

  final List<Map<String, dynamic>> result = [
    {
      "resultText": "We are sorry for the inconvenience",
      "resultColor": Colors.red,
      "min": 1,
      "max": 10,
    },
    {
      "resultText": "Hope we serve you better next time",
      "resultColor": Colors.yellow,
      "min": 11,
      "max": 20,
    },
    {
      "resultText": "We hope you come back next time",
      "resultColor": Colors.green,
      "min": 21,
      "max": 30,
    },
  ];

  Map<String, dynamic> get results {
    var finalResult;
    result.forEach((result) {
      if (resultScore >= result['min'] && resultScore <= result['max']) {
        finalResult = result;
      }
    });
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            results['resultText'],
            style: TextStyle(fontSize: 26, color: results['resultColor']),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   'Score' '$resultScore',
          //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          // ),
          TextButton(
              child: Text(
                'Restart',
              ),
              onPressed: () => resetHandler),
        ],
      ),
    );
  }
}
