import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview/app/view/dimens.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:flutter_interview/ui/picture/picture_page.dart';

class ArticlePictureView extends StatelessWidget {
  const ArticlePictureView(this.articlePicture, {super.key});

  final ArticlePicture articlePicture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSpace),
      child: InkWell(
        onTap: () => _goToPictureDetails(context),
        borderRadius: BorderRadius.circular(baseRadius),
        child: Ink(
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
                  articlePicture.title,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: baseSpace),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(baseRadius),
                    child: Hero(
                      tag: 'Picture_${articlePicture.id}',
                      child: CachedNetworkImage(
                        imageUrl: articlePicture.picture.url,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: pictureHeight,
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Text(
                    articlePicture.author,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _goToPictureDetails(BuildContext context) {
    Navigator.of(context).push(PicturePage.route(articlePicture));
  }
}
