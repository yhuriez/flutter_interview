import 'package:flutter_interview/data/api/interview_api.dart';
import 'package:flutter_interview/data/api/remote_article.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/data/models/result.dart';

class FetchArticlesUseCase {
  FetchArticlesUseCase(this._interviewApi);

  static const POST_TYPE = 1;
  static const PICTURE_TYPE = 2;

  final InterviewApi _interviewApi;

  static FetchArticlesUseCase? _instance;

  // Note : Here we access the use case using a singleton pattern
  // for the sake of simplicity. In a larger application
  // this instance should be provided using a dependency injection system.
  static FetchArticlesUseCase getInstance() {
    _instance ??= FetchArticlesUseCase(
      InterviewApi(),
    );
    return _instance!;
  }

  Future<Result<List<Article>>> execute() async {
    final result = await _interviewApi.fetchArticles();

    return result.map(
        success: (result) => Result.success(result.data.map(_fromRemote).toList()),
        failure: (result) => Result.failure(result.errorType));
  }

  Article _fromRemote(RemoteArticle remoteArticle) {
    if (remoteArticle.type == POST_TYPE) {
      // TODO DTO Validation

      return Article.post(
        id: remoteArticle.id,
        title: remoteArticle.title,
        excerpt: remoteArticle.excerpt!,
        text: remoteArticle.text!,
      );
    } else {
      return Article.picture(
        id: remoteArticle.id,
        title: remoteArticle.title,
        author: remoteArticle.author!,
        picture: remoteArticle.picture!,
      );
    }
  }
}
