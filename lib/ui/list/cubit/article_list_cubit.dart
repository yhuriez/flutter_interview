import 'package:bloc/bloc.dart';
import 'package:flutter_interview/domain/usecases/fetch_articles.dart';
import 'package:flutter_interview/ui/list/cubit/article_list_state.dart';

class ArticleListCubit extends Cubit<ArticleListState> {
  ArticleListCubit(this._fetchArticlesUseCase) : super(const ArticleListState.loading()) {
    loadMoreArticles();
  }

  final FetchArticlesUseCase _fetchArticlesUseCase;

  Future<void> loadMoreArticles() async {
    final result = await _fetchArticlesUseCase.execute();

    final previousArticles = state.mapOrNull(success: (it) => it.articles) ?? [];

    final newState = result.map(success: (result) {
      return ArticleListState.success(previousArticles + result.data);
    }, failure: (result) {
      if(previousArticles.isEmpty) {
        return ArticleListState.error(result.errorType);
      } else {
        // We don't show error when loading more articles
        return ArticleListState.success(previousArticles);
      }
    });

    emit(newState);
  }
}
