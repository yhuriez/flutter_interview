import 'package:flutter/material.dart';
import 'package:flutter_interview/app/view/dimens.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/l10n/l10n.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key, required this.articlePost});

  final ArticlePost articlePost;

  static const String routeName = 'post';

  static Route<dynamic> route(ArticlePost post) {
    return MaterialPageRoute(
      builder: (_) => PostPage(
        articlePost: post,
      ),
      settings: RouteSettings(name: '$routeName/${post.id}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: toolbarHeight,
          title: Text(AppLocalizations.of(context).postTitle),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: webMaxWidth),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: largeSpace),
              child: ListView(
                children: [
                  Text(
                    articlePost.title,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: baseSpace,
                  ),
                  Text(
                    articlePost.text,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}