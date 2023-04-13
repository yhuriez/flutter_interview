import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:flutter_interview/data/api/interview_api.dart';
import 'package:flutter_interview/data/api/remote_article.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/data/models/picture.dart';
import 'package:flutter_interview/data/models/result.dart';
import 'package:flutter_interview/domain/usecases/fetch_articles.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mocks.dart';

void main() {
  const remoteArticles = [
    RemoteArticle(
      id: "id_1",
      title: "some_title",
      excerpt: "some_excerpt",
      text: "some_text",
      type: 1,
    ),
    RemoteArticle(
      id: "id_2",
      title: "some_title_2",
      author: "author",
      picture: Picture(width: 100, height: 100, url: "some_url"),
      type: 2,
    ),
  ];

  const articles = [
    ArticlePost(
      id: "id_1",
      title: "some_title",
      excerpt: "some_excerpt",
      text: "some_text",
    ),
    ArticlePicture(
      id: "id_2",
      title: "some_title_2",
      author: "author",
      picture: Picture(width: 100, height: 100, url: "some_url"),
    ),
  ];

  group('FetchArticlesUseCase', () {
    test('return empty list when api has no articles', () async {
      final mock = createMockApi(const Result.success([]));
      final useCase = FetchArticlesUseCase(mock);

      expect(
        await useCase.execute(),
        equals(const Result.success(<Article>[])),
      );
    });

    test('return articles when api provides remote articles', () async {
      final mock = createMockApi(const Result.success(remoteArticles));
      final useCase = FetchArticlesUseCase(mock);

      expect(
        await useCase.execute(),
        equals(const Result.success(articles)),
      );
    });

    test('return error when api return error', () async {
      final mock = createMockApi(
        const Result.failure(ApiErrorType.not_authorized),
      );
      final useCase = FetchArticlesUseCase(mock);

      expect(
        await useCase.execute(),
        equals(
          const Result<List<Article>>.failure(ApiErrorType.not_authorized),
        ),
      );
    });
  });
}

InterviewApi createMockApi(Result<List<RemoteArticle>> result) {
  final mock = MockInterviewApi();
  when(mock.fetchArticles).thenAnswer((_) async => result);
  return mock;
}
