import 'package:flutter/material.dart';
import 'package:news_app/shared/recent_news_builder.dart';

class CatigoryView extends StatelessWidget {
  const CatigoryView({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          type,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            RecentNewsBuilder(
              catigory: type,
            )
          ],
        ),
      ),
    );
  }
}
