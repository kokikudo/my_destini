import 'package:flutter/material.dart';
import 'package:my_destini/constrains.dart';
import 'package:my_destini/question_brain.dart';
import 'package:provider/provider.dart';
import 'package:my_destini/screen/result_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionBrain>(builder: (_, qBrain, child) {
      var _question = qBrain.getQuestion();
      var _isLastQuestion = qBrain.isLastQuestion;
      return Scaffold(
        appBar: AppBar(
          title: const Text('無駄遣いタイプ診断テスト'),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(27, 16, 27, 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(image: _question.image)),
              ),
              SizedBox(
                height: 16.0,
              ),
              Expanded(
                  child: Text(
                _question.questionText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              )),
              SizedBox(
                height: 16.0,
              ),
              TextButton(
                  style: kButtonStyle(Colors.blue),
                  onPressed: () {
                    if (qBrain.isLastQuestion) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(answer: true),
                        ),
                      );
                    }
                    qBrain.nextQuestion(true);
                  },
                  child: Text(
                    'はい',
                    style: Theme.of(context).textTheme.button,
                  )),
              SizedBox(
                height: 27.0,
              ),
              TextButton(
                  style: kButtonStyle(Colors.red),
                  onPressed: () {
                    if (qBrain.isLastQuestion) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(answer: false),
                        ),
                      );
                    }
                    qBrain.nextQuestion(false);
                  },
                  child: Text(
                    'いいえ',
                    style: Theme.of(context).textTheme.button,
                  )),
            ],
          ),
        ),
      );
    });
  }
}
