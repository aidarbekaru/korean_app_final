import 'package:flutter/material.dart';
import 'package:koreanapparu/QuizPage.dart';
import 'MenuPage.dart';
import 'Database.dart';

var numOfQuestion = 0;
var totalScore = 0;

class DoQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: doQuiz(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/menuPage': (context) => MenuPage(),
        '/quizPage': (context) => QuizPage(),
        '/doQuiz': (context) => DoQuiz(),
      },
    );
  }
}

class doQuiz extends StatefulWidget {
  @override
  _doQuizState createState() => _doQuizState();
}

class _doQuizState extends State<doQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(12)),
            Container(
              alignment: Alignment.centerRight,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Text(
                    '${numOfQuestion + 1}/${jobCards.length}',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  Text(
                    'Ұпай: $totalScore',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset('${jobCards[numOfQuestion]['image']}',
                width: 150, height: 150),
            SizedBox(
              height: 20,
            ),
            Text('${jobCards[numOfQuestion]['kazTitle']}',
                style: TextStyle(fontSize: 20, color: Colors.black54)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (jobVariants[numOfQuestion][0] ==
                        '${jobCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    jobVariants[numOfQuestion][0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (jobVariants[numOfQuestion][1] ==
                        '${jobCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    jobVariants[numOfQuestion][1],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (jobVariants[numOfQuestion][2] ==
                        '${jobCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    jobVariants[numOfQuestion][2],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (jobVariants[numOfQuestion][3] ==
                        '${jobCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    jobVariants[numOfQuestion][3],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  goBack();
                },
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular((40))),
                  ),
                  child: Text(
                    'Шығу',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goBack() {
    setState(() {
      Navigator.pushNamed(context, '/quizPage');
      totalScore = 0;
      numOfQuestion = 0;
    });
  }

  void changeQuestions() {
    setState(() {
      if (numOfQuestion == jobCards.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Result(totalscore: totalScore)));
      } else {
        numOfQuestion++;
      }
    });
  }
}

class Result extends StatelessWidget {
  final int totalscore;

  Result({Key key, @required this.totalscore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int percentage = ((totalscore/jobCards.length)*100).ceil();
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Сіздің ұпайыңыз: $percentage%',
                  style: TextStyle(fontSize: 24, color: Color.fromRGBO(101, 191, 249, 1), fontWeight: FontWeight.w600,),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/congrats.png'),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/doQuiz');
                      numOfQuestion = 0;
                      totalScore = 0;
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(101, 191, 249, 1),
                        borderRadius: BorderRadius.all(Radius.circular((40))),
                      ),
                      child: Text(
                        'Қайтадан өту',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
