import 'package:flutter/material.dart';
import 'package:koreanapparu/QuizPage.dart';
import 'MenuPage.dart';
import 'Database.dart';

var numOfQuestion = 0;
var totalScore = 0;

class DoQuizThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: doQuizThing(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/menuPage': (context) => MenuPage(),
        '/quizPage': (context) => QuizPage(),
        '/doQuizThing': (context) => doQuizThing(),
      },
    );
  }
}

class doQuizThing extends StatefulWidget {
  @override
  _doQuizThingState createState() => _doQuizThingState();
}

class _doQuizThingState extends State<doQuizThing> {
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
                    '${numOfQuestion + 1}/${thingCards.length}',
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
            Image.asset('${thingCards[numOfQuestion]['image']}',
                width: 150, height: 150),
            SizedBox(
              height: 20,
            ),
            Text('${thingCards[numOfQuestion]['kazTitle']}',
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
                    if (thingVariants[numOfQuestion][0] ==
                        '${thingCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    thingVariants[numOfQuestion][0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (thingVariants[numOfQuestion][1] ==
                        '${thingCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    thingVariants[numOfQuestion][1],
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
                    if (thingVariants[numOfQuestion][2] ==
                        '${thingCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    thingVariants[numOfQuestion][2],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (thingVariants[numOfQuestion][3] ==
                        '${thingCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    thingVariants[numOfQuestion][3],
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
      if (numOfQuestion == thingCards.length - 1) {
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
    int percentage = ((totalscore/thingCards.length)*100).ceil();
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
                      Navigator.pushNamed(context, '/doQuizThing');
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
