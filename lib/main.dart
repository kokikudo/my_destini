import 'package:flutter/material.dart';
import 'package:my_destini/screen/question.dart';
import 'package:provider/provider.dart';
import 'question_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuestionBrain(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
              // 呼び出すときはTheme.of(context).textTheme.headline1 などで呼び出す
              headline1: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 93,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1.5),
              headline2: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 58,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.5),
              headline3: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 47,
                  fontWeight: FontWeight.w400),
              headline4: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 33,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25),
              headline5: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 23,
                  fontWeight: FontWeight.w400),
              headline6: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15),
              subtitle1: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15),
              subtitle2: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1),
              bodyText1: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
              bodyText2: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25),
              button: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.25,
                  color: Colors.white),
              caption: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4),
              overline: TextStyle(
                  fontFamily: 'SansJp',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            )),
        home: const QuestionScreen(),
      ),
    );
  }
}

class TextThemeList extends StatelessWidget {
  const TextThemeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text(
              '見出し1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              '見出し2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              '見出し3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              '見出し4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '見出し5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '見出し6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '字幕1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              '字幕2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'ボディ1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'ボディ2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'ボタン',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'キャプション',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'オーバーライン',
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        ),
      ),
    );
  }
}
