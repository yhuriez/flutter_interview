import 'package:flutter/material.dart';
import 'package:flutter_interview/app/view/dimens.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/l10n/l10n.dart';
import 'package:flutter_interview/ui/post/post_page.dart';

class ArticlePostView extends StatelessWidget {
  const ArticlePostView(this.articlePost, {super.key});

  final ArticlePost articlePost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSpace),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(baseRadius),
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(xlargeSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                articlePost.title,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: baseSpace,
              ),
              Text(
                articlePost.excerpt,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: baseSpace,
              ),
              ReadMoreButton(
                articlePost: articlePost,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReadMoreButton extends StatelessWidget {
  const ReadMoreButton({super.key, required this.articlePost});

  final ArticlePost articlePost;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToPostDetails(context),
      borderRadius: BorderRadius.circular(buttonRadius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: baseSpace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context).readMoreLabel,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToPostDetails(BuildContext context) {
    Navigator.of(context).push(PostPage.route(articlePost));
  }
}
