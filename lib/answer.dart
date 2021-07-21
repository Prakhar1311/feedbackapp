import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;
  final int initialValue;

  Answer({required this.selectHandler, required this.initialValue});

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int value = 1;
  void setValue(double val) {
    setState(() {
      value = val.toInt();
    });
    widget.selectHandler(value);
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity,
    //   child: ElevatedButton(
    //     color: Color(0xFF00E676),
    //     textColor: Colors.white,
    //     child: Text(widget.answerText),
    //     onPressed: () => widget.selectHandler,
    //   ), //RaisedButton
    // ); //Container

    return Row(
      children: [
        Container(),
        SizedBox(
          width: 15,
          height: 10,
        ),
        Text(value.toString()),
        Expanded(
          child: Slider(
            min: 1,
            max: 5,
            divisions: 4,
            onChanged: (val) {
              setValue(val);
            },
            value: value.toDouble(),
          ),
        ),
      ],
    );
  }
}
