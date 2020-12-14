import 'package:flutter/material.dart';
import 'package:koreanapparu/QuizPage.dart';
import 'MenuPage.dart';
import 'Database.dart';

var numOfQuestion = 0;
var totalScore = 0;

class DoQuizCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: doQuizCountry(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/menuPage': (context) => MenuPage(),
        '/quizPage': (context) => QuizPage(),
        '/doQuizCountry': (context) => doQuizCountry(),
      },
    );
  }
}

class doQuizCountry extends StatefulWidget {
  @override
  _doQuizCountryState createState() => _doQuizCountryState();
}

class _doQuizCountryState extends State<doQuizCountry> {
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
                    '${numOfQuestion + 1}/${countryCards.length}',
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
            Image.asset('${countryCards[numOfQuestion]['image']}',
                width: 150, height: 150),
            SizedBox(
              height: 20,
            ),
            Text('${countryCards[numOfQuestion]['kazTitle']}',
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
                    if (countryVariants[numOfQuestion][0] ==
                        '${countryCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    countryVariants[numOfQuestion][0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (countryVariants[numOfQuestion][1] ==
                        '${countryCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    countryVariants[numOfQuestion][1],
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
                    if (countryVariants[numOfQuestion][2] ==
                        '${countryCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    countryVariants[numOfQuestion][2],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  color: Color.fromRGBO(101, 191, 249, 1),
                  onPressed: () {
                    if (countryVariants[numOfQuestion][3] ==
                        '${countryCards[numOfQuestion]['korTitle']}') {
                      totalScore++;
                    } else {
                    }
                    changeQuestions();
                  },
                  child: Text(
                    countryVariants[numOfQuestion][3],
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
      if (numOfQuestion == countryCards.length - 1) {
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
    int percentage = ((totalscore/countryCards.length)*100).ceil();
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
                      Navigator.pushNamed(context, '/doQuizCountry');
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
