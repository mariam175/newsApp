import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/shared/article.dart';

class RecentNewsList extends StatelessWidget {
  const RecentNewsList({super.key ,required this.articleList});
  final List<ArticleModel> articleList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articleList.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RecentNews(
                    article: articleList[index],
                  ),
                );
              },
            ),
          );
  }
}
