import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Database.dart';

class HangylTopics extends StatelessWidget {
  Widget build(context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 450,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: hangylTopics
          .map((item) => Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      item['korTitle'],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(item['image'], width: 240),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                          item['kazTitle'],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
