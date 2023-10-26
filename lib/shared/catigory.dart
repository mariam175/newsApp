import 'package:flutter/material.dart';
import 'package:news_app/models/catigory_model.dart';
import 'package:news_app/screens/catigory_view.dart';

class Catigory extends StatelessWidget {
  const Catigory({super.key , required this.cat});
  final Catigories cat;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CatigoryView(type: cat.newsType,)));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 150,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
              image: AssetImage(
                cat.img,
              ),
              fit: BoxFit.fill),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            cat.newsType,
            style: const TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
