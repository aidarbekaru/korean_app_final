import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'VocabularyPage.dart';
import 'Database.dart';

class ThingCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: thingsCards(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/funcPage': (context) => VocabularyPage(),
      },
    );
  }
}

class thingsCards extends StatefulWidget {
  State<StatefulWidget> createState() => thingsCardsState();
}

class thingsCardsState extends State<thingsCards> {

  CardController controller;
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff4f6fd),
        title: Text(
          'Сөздерді үйреніңіз',
          style: TextStyle(
              color: Color.fromRGBO(101, 191, 249, 1),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
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
      backgroundColor: Color.fromRGBO(101, 191, 249, 1),
      body: Center(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TinderSwapCard(
                orientation: AmassOrientation.BOTTOM,
                totalNum: thingCards.length,
                swipeEdge: 3.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.8,
                minWidth: MediaQuery.of(context).size.width * 0.6,
                minHeight: MediaQuery.of(context).size.width * 0.7,
                cardBuilder: (context, index) => Card(
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${thingCards[index]['kazTitle']}',
                              style: TextStyle(fontSize: 20, color: Colors.black54)),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset('${thingCards[index]['image']}',
                              width: 150, height: 150),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${thingCards[index]['korTitle']}',
                              style: TextStyle(fontSize: 20, color: Colors.black54)),
                        ],
                      )
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  if (align.x < 0) {
                  } else if (align.x > 0) {
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                },
              )
          )
      ),
    );
  }
  void goBack() {
    Navigator.pushNamed(context, '/funcPage');
  }
}