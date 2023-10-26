import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/shared/recent_news_list.dart';

class RecentNewsBuilder extends StatefulWidget {
  const RecentNewsBuilder({
    required this.catigory,
    super.key,
  });
  final String catigory;
  @override
  State<RecentNewsBuilder> createState() => _RecentNewsBuilderState();
}

class _RecentNewsBuilderState extends State<RecentNewsBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(catigoryNews: widget.catigory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RecentNewsList(
            articleList: snapshot.data!,
          );
        }
        if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: Text('OOPS there is an error'),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
