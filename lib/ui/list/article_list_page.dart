import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/app/view/dimens.dart';
import 'package:flutter_interview/app/view/theme_notifier.dart';
import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/domain/usecases/fetch_articles.dart';
import 'package:flutter_interview/l10n/l10n.dart';
import 'package:flutter_interview/ui/list/cubit/article_list_cubit.dart';
import 'package:flutter_interview/ui/list/cubit/article_list_state.dart';
import 'package:flutter_interview/ui/list/views/article_picture_view.dart';
import 'package:flutter_interview/ui/list/views/article_post_view.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  static const String routeName = 'list';

  static MaterialPageRoute<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => const ArticleListPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ArticleListCubit(FetchArticlesUseCase.getInstance()),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: toolbarHeight,
            title: Text(AppLocalizations.of(context).listTitle),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: ThemeNotifier.instance.switchTheme,
                icon: const Icon(Icons.invert_colors),
              )
            ],
          ),
          body: _ArticleListBody(),
        ),
      ),
    );
  }
}

class _ArticleListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(largeSpace),
      child: BlocBuilder<ArticleListCubit, ArticleListState>(
        builder: (context, state) {
          return state.map(
            loading: (it) => _Loader(),
            error: (it) => _ErrorView(it.errorType),
            success: (it) => _ArticleListContent(it.articles),
          );
        },
      ),
    );
  }
}

class _ArticleListContent extends StatelessWidget {
  const _ArticleListContent(this.articles);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollEndNotification>(
      onNotification: (scrollEnd) {
        final metrics = scrollEnd.metrics;
        if (metrics.atEdge && metrics.pixels != 0) {
          BlocProvider.of<ArticleListCubit>(context).loadMoreArticles();
        }
        return true;
      },
      child: ListView.builder(
        itemCount: articles.length + 1,
        itemBuilder: (context, index) {
          if (index == articles.length) {
            return _BottomLoader();
          } else {
            final article = articles[index];

            return article.map(
              picture: ArticlePictureView.new,
              post: ArticlePostView.new,
            );
          }
        },
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Padding(
      padding: EdgeInsets.all(largeSpace),
      child: CircularProgressIndicator(),
    ));
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView(this.errorType);

  final ApiErrorType errorType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        getWording(context),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.red),
      ),
    );
  }

  String getWording(BuildContext context) {
    switch (errorType) {
      case ApiErrorType.no_content:
        return AppLocalizations.of(context).errorNoContent;

      case ApiErrorType.not_authorized:
        return AppLocalizations.of(context).errorNotAuthorized;

      case ApiErrorType.timeout:
        return AppLocalizations.of(context).errorTimeout;

      case ApiErrorType.internal_error:
        return AppLocalizations.of(context).errorInternal;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<ApiErrorType>('errorType', errorType));
  }
}
