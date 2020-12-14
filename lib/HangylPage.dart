import 'package:flutter/material.dart';
import 'package:koreanapparu/HangylTopics.dart';
import 'MenuPage.dart';

class HangylPage extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: hangylPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/menuPage': (context) => MenuPage(),
      },
    );
  }
}

class hangylPage extends StatefulWidget {
  @override
  _hangylPageState createState() => _hangylPageState();
}

class _hangylPageState extends State<hangylPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff4f6fd),
        appBar: AppBar(
          title: Text(
            'Хангыльды үйреңіңіз',
            style: TextStyle(
                color: Color.fromRGBO(101, 191, 249, 1),
                fontSize: 22,
                fontWeight: FontWeight.w500),
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
        body: Builder(
          builder: (context) => SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HangylTopics(),
                    Container(
                        width: 210,
                        height: 45,
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
  void goBack() {
    Navigator.pushNamed(context, '/menuPage');
  }
}