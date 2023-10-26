import 'package:flutter/material.dart';
import 'package:news_app/models/catigory_model.dart';
import 'package:news_app/shared/catigory.dart';

class CatigoriesView extends StatelessWidget {
  const CatigoriesView({super.key});
  final List<Catigories> catigoryList = const [
    Catigories(img: 'assets/business.jpeg', newsType: 'Business'),
    Catigories(img: 'assets/entertaiment.jpg', newsType: 'Entertainment'),
    Catigories(img: 'assets/health.jpg', newsType: 'Health'),
    Catigories(img: 'assets/science.jpg', newsType: 'Science'),
    Catigories(img: 'assets/sports.jpg', newsType: 'Sports'),
    Catigories(img: 'assets/technology.jpeg', newsType: 'Technology'),
    Catigories(img: 'assets/general.jpg', newsType: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catigoryList.length,
          itemBuilder: (context, index) {
            return Catigory(cat: catigoryList[index]);
          },
        ));
  }
}
