import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required catigoryNews}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$catigoryNews&country=us&apiKey=8692a9e7d3344c289b18d242cc9d2375');
      Map<String, dynamic> dat = response.data;
      List<dynamic> articles = dat['articles'];
      List<ArticleModel> articlesList = [];
      for (var art in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(art);
        articlesList.add(articleModel);
      }
      return (articlesList);
    } catch (e) {
      return [];
    }
  }
}
