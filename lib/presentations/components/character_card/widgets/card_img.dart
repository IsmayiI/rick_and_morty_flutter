import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {
  final String imageUrl;
  const CardImg(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: 143,
      height: 143,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          const Icon(Icons.image_not_supported),
    );
  }
}
