import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/data/models/picture.dart';
import 'package:flutter_interview/data/models/result.dart';
import 'package:flutter_interview/domain/usecases/fetch_articles.dart';
import 'package:flutter_interview/ui/list/cubit/article_list_cubit.dart';
import 'package:flutter_interview/ui/list/cubit/article_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/mocks.dart';



void main() {
  const defaultArticles = [
    ArticlePicture(
      id: "id_1",
      title: "some_title",
      author: "author",
      picture: Picture(width: 100, height: 100, url: "some_url"),
    ),
    ArticlePost(
      id: "id_1",
      title: "some_title",
      excerpt: "some_excerpt",
      text: "some_text",
    ),
  ];

  group('ArticleListCubit', () {
    test('initial state is loading', () {
      final mock = createMockUseCase(const Result.success([]));

      expect(
        ArticleListCubit(mock).state,
        equals(
          const ArticleListState.loading(),
        ),
      );
    });

    blocTest<ArticleListCubit, ArticleListState>(
      'emits success state with empty list at start',
      build: () => ArticleListCubit(
        createMockUseCase(
          const Result.success([]),
        ),
      ),
      act: (cubit) {}, // Do nothing
      expect: () => [equals(const ArticleListState.success([]))],
    );

    blocTest<ArticleListCubit, ArticleListState>(
      'emits success state with articles list at start',
      build: () => ArticleListCubit(
        createMockUseCase(
          const Result.success(defaultArticles),
        ),
      ),
      act: (cubit) {}, // Do nothing
      expect: () => [equals(const ArticleListState.success(defaultArticles))],
    );

    blocTest<ArticleListCubit, ArticleListState>(
      'emits error state when use case fails',
      build: () => ArticleListCubit(
        createMockUseCase(
          const Result.failure(ApiErrorType.internal_error),
        ),
      ),
      act: (cubit) {}, // Do nothing
      expect: () => [
        equals(
          const ArticleListState.error(ApiErrorType.internal_error),
        )
      ],
    );

    blocTest<ArticleListCubit, ArticleListState>(
      'emits success state with more articles after calling loadMoreArticles',
      build: () => ArticleListCubit(
        createMockUseCase(
          const Result.success(defaultArticles),
        ),
      ),
      act: (cubit) => cubit.loadMoreArticles(),
      expect: () => [
        equals(
          const ArticleListState.success(defaultArticles),
        ),
        equals(
          ArticleListState.success(defaultArticles + defaultArticles),
        )
      ],
    );
  });
}

FetchArticlesUseCase createMockUseCase(Result<List<Article>> result) {
  final mock = MockFetchArticlesUseCase();
  when(mock.execute).thenAnswer((_) async => result);
  return mock;
}
