import 'package:flutter/material.dart';
import 'package:koreanapparu/CountryCards.dart';
import 'package:koreanapparu/DoQuiz.dart';
import 'package:koreanapparu/DoQuizCountry.dart';
import 'package:koreanapparu/DoQuizThing.dart';
import 'package:koreanapparu/JobCards.dart';
import 'package:koreanapparu/ThingCards.dart';
import 'MenuPage.dart';
import 'Database.dart';

class VocabularyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: vocabularyPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/menuPage': (context) => MenuPage(),
        '/jobCards': (context) => JobCards(),
        '/countryCards': (context) => CountryCards(),
        '/thingCards': (context) => ThingCards(),
      },
    );
  }
}

class vocabularyPage extends StatefulWidget {
  @override
  _vocabularyPageState createState() => _vocabularyPageState();
}

class _vocabularyPageState extends State<vocabularyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      appBar: AppBar(
        title: Text(
          'Сөздік - 퀴즈',
          style: TextStyle(
              color: Color.fromRGBO(101, 191, 249, 1),
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {
              goBack();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(101, 191, 249, 1),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color.fromRGBO(101, 191, 249, 0.6),
              ),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage('assets/image/vocabulary.png'),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Тақырыпты таңдаңыз:',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: InkWell(
                  onTap: () => {},
                  child: SingleChildScrollView( child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(101, 191, 249, 0.9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.wb_incandescent,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                  onTap: () {
                                    gotToJobCards();
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${topics[0]['korTitle']}',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black54),
                                      ),
                                      Text(
                                        '${topics[0]['kazTitle']}',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      )
                                    ],
                                  )),

                            ],
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(101, 191, 249, 0.9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.wb_incandescent,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                  onTap: () {
                                    goToCountryCards();
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${topics[1]['korTitle']}',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black54),
                                      ),
                                      Text(
                                        '${topics[1]['kazTitle']}',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(101, 191, 249, 0.9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.wb_incandescent,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                  onTap: () {
                                    goToThingCards();
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${topics[2]['korTitle']}',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black54),
                                      ),
                                      Text(
                                        '${topics[2]['kazTitle']}',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void goBack() {
    Navigator.pushNamed(context, '/menuPage');
  }

  void gotToJobCards() {
    Navigator.pushNamed(context, '/jobCards');
  }

  void goToCountryCards() {
    Navigator.pushNamed(context, '/countryCards');
  }

  void goToThingCards() {
    Navigator.pushNamed(context, '/thingCards');
  }
}
