import 'package:flutter/material.dart';
import 'package:my_destini/constrains.dart';
import 'package:my_destini/question_brain.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.answer}) : super(key: key);

  final bool answer;

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionBrain>(builder: (_, qBrain, child) {
      var _result = qBrain.getResult(answer);

      return Scaffold(
        appBar: AppBar(
          title: const Text('無駄遣いタイプ診断テスト'),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(27, 16, 27, 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _result.resultTitleText,
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                width: 300,
                height: 300,
                decoration:
                    BoxDecoration(image: DecorationImage(image: _result.image)),
              ),
              SizedBox(
                height: 16.0,
              ),
              Expanded(
                  child: Text(
                _result.resultBodyText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              )),
              SizedBox(
                height: 16.0,
              ),
              TextButton(
                  style: kButtonStyle(Colors.grey),
                  onPressed: () {
                    qBrain.reset();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'やりなおす',
                    style: Theme.of(context).textTheme.button,
                  )),
              SizedBox(
                height: 27.0,
              ),
            ],
          ),
        ),
      );
    });
  }
}
