class MyModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  MyModel(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory MyModel.fromJson(Map<String, dynamic> json) => MyModel(
        status: json['status'],
        totalResults: json['totalResults'],
        articles: List<ArticleModel>.from((json['articles'] as List)
            .map((article) => ArticleModel.fromJson(article))),
      );
}

class ArticleModel {
  final SourceModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  ArticleModel(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        source: SourceModel.fromJson(json['source']),
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content'],
      );
}

class SourceModel {
  final String? id;
  final String name;

  SourceModel({this.id, required this.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      SourceModel(id: json['id'], name: json['name']);
}
