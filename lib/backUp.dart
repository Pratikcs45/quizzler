import 'package:flutter/material.dart';
import 'question.dart';
import 'quizBrain.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  // List<Widget> scoreKeeper = [];
  // List<String> questions = [
  //   'Rohit Sharma Is Best Batsman of all time',
  //   'Rohit Sharma Is Going to won the t20 world cup',
  //   'today is monday',
  //   'art\' is  a  waste of monney',
  // ];
  // List<bool> answers = [true, true, false];

  // Question q1 = Question(
  //     questionText: 'Rohit Sharma Is Best Batsman of all time',
  //     questionAnswer: true);
  List<Widget> scoreKeeper = [];
  QuizBrain quizBrain = QuizBrain();
  void userAnswer(bool userAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    if (correctAnswer == userAnswer) {
      print('ans is correct');
      scoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
      print('wrong');
    }
    setState(() {
      quizBrain.nextQuestion();
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                // 'This is where the question text will go',
                quizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                userAnswer(true);
                // print('True button pressed');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                userAnswer(false);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreKeeper,
            ),
          ),
        )
      ],
    );
  }
}

// 
// import 'package:flutter/material.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('RFlutter Alert Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Alert(
//             context: context,
//             type: AlertType.info,
//             title: "RFLUTTER ALERT",
//             desc: "Flutter is awesome.",
//             buttons: [
//               DialogButton(
//                 child: Text(
//                   "COOL",
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 onPressed: () => Navigator.pop(context),
//                 width: 120,
//               )
//             ],
//           ).show(),
//           child: Text('Show Alert'),
//         ),
//       ),
//     );
//   }
// }
