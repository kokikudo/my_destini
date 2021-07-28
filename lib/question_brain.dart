import 'package:flutter/material.dart';
import 'question_model.dart';
import 'result_model.dart';

class QuestionBrain extends ChangeNotifier {
  int _questionNumber = 0;
  final List<QuestionModel> _questions = [
    QuestionModel(AssetImage('images/image1.png'), '考えるよりも先に行動するタイプだ。'),
    QuestionModel(AssetImage('images/image2.png'), 'ショッピングに出かける頻度が多いと思う。'),
    QuestionModel(AssetImage('images/image3.png'), '絶対に損をしたくない。'),
    QuestionModel(AssetImage('images/image4.png'), '良い出来事が起きたときに気持ちが高揚しやすい。'),
    QuestionModel(AssetImage('images/image5.png'), '買い物した後はしばらく満足してる。'),
    QuestionModel(
        AssetImage('images/image6.png'), 'つい目の前の作業を忘れ、他のことを考えてしまうことがよくある。'),
  ];

  ///TODO 診断結果の画像ができたらファイル名をresultにする
  final List<ResultModel> _results = [
    ResultModel(AssetImage('images/result_a.png'), 'A. 衝動買いタイプ',
        'いいものを見つけるとテンションが上がるあなたは衝動買いタイプ。手を伸ばす前に深呼吸し本当に必要かよく考えてみて。'),
    ResultModel(AssetImage('images/result_b.png'), 'B. お得に弱いタイプ',
        'セット商品などをみるとお得感を感じてなんでも手を伸ばしてしまうあなた。トイレットペーパーなどの生活必需品はともかく、スナック菓子などの必須ではないものを買いすぎていませんか？'),
    ResultModel(AssetImage('images/result_c.png'), 'C. ごほうびタイプ',
        '「今月はあんなに頑張ったんだから…」と、不必要なものを買ったりしてしまいがち。自分を労ってあげたい時は自分自身に「よく頑張ったね」と語りかけるだけも癒されたりしますよ。'),
    ResultModel(AssetImage('images/result_d.png'), 'D. 言い訳タイプ',
        '「先月はあまりお小遣いを使わなかったから」など、「〜だから」という理由をつけて無駄遣いしてしまうタイプ。本当に欲しいものは理由探しなどしないはずなので、理由を探している自分に気づいたら少し距離を置くと改善できるかも。'),
    ResultModel(AssetImage('images/result_e.png'), 'E. 考えすぎタイプ',
        '後悔しないように常に最適解を探すタイプ。また、他のものに目移りしがちなので、散々悩んで買った挙句、「やっぱあっちの方が良かったかも…」と後悔しがち。買い物に行く前に欲しいものとその理由をしっかり考え、買うか買わないかの基準を決めると後悔するケースが減るかも。'),
  ];

  QuestionModel getQuestion() {
    return _questions[_questionNumber];
  }

  bool get isLastQuestion {
    return (_questionNumber == 3 ||
        _questionNumber == 4 ||
        _questionNumber == 5);
  }

  void nextQuestion(bool answer) {
    if (_questionNumber == 0 && answer == true) {
      _questionNumber = 1;
    } else if (_questionNumber == 0 && answer == false) {
      _questionNumber = 2;
    } else if (_questionNumber == 1 && answer == true) {
      _questionNumber = 4;
    } else if (_questionNumber == 1 && answer == false) {
      _questionNumber = 3;
    } else if (_questionNumber == 2 && answer == true) {
      _questionNumber = 5;
    } else if (_questionNumber == 2 && answer == false) {
      _questionNumber = 4;
    }
    notifyListeners();
  }

  ResultModel getResult(bool answer) {
    if (_questionNumber == 3 && answer == true) {
      return _results[0];
    } else if (_questionNumber == 3 && answer == false) {
      return _results[1];
    } else if (_questionNumber == 4 && answer == true) {
      return _results[2];
    } else if (_questionNumber == 4 ||
        _questionNumber == 5 && answer == false) {
      return _results[4];
    } else {
      return _results[3];
    }
  }

  void reset() {
    _questionNumber = 0;
    notifyListeners();
  }
}
