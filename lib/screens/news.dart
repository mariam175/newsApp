import 'package:flutter/material.dart';
import 'package:news_app/shared/catigories_sc.dart';
import 'package:news_app/shared/recent_news_builder.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(color: Colors.orange),
                )
              ],
            )),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CatigoriesView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              RecentNewsBuilder(catigory: 'general',)
            ],
          ),
        ));
  }
}

