import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../shimmer_widgets/app_shimmer.dart';

class ImageWidget extends StatelessWidget {
  String imageURL;
  BoxFit fit;

  ImageWidget({required this.imageURL, this.fit = BoxFit.cover, super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => _buildImagePlaceholder(),
      fit: fit,
      imageUrl: imageURL,
    );
  }

  Widget _buildImagePlaceholder() {
    return AppShimmerWidget(
        child: const Center(
            child: Icon(
      Icons.image_outlined,
      size: 40,
    )));
  }
}
