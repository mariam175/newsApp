import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/screens/news_view.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
    required this.article,
    super.key,
  });
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: article.image != null
                ? Image.network(article.image!)
                : Image.asset('assets/business.jpeg')),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NewsView(articleUrl: article.url),
            ));
          },
          child: Text(
            article.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            maxLines: 2,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          article.description ?? '',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )
      ],
    );
  }
}
