import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/router_app.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CateygryCustomListViewWidget extends StatelessWidget {
  const CateygryCustomListViewWidget({super.key, required this.imageUrl});
  final String imageUrl;
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
