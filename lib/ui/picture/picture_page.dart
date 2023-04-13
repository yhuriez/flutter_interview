import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview/app/view/dimens.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/l10n/l10n.dart';

class PicturePage extends StatelessWidget {
  const PicturePage({super.key, required this.articlePicture});

  final ArticlePicture articlePicture;

  static const String routeName = 'picture';

  static Route<dynamic> route(ArticlePicture articlePicture) {
    return MaterialPageRoute(
      builder: (_) => PicturePage(
        articlePicture: articlePicture,
      ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(AppLocalizations.of(context).pictureTitle),
          toolbarHeight: toolbarHeight,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: 'Picture_${articlePicture.id}',
                child: CachedNetworkImage(
                  imageUrl: articlePicture.picture.url,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: largeSpace,
              ),
              Text(
                articlePicture.title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: smallSpace,
              ),
              Text(
                articlePicture.author,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
