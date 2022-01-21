import 'package:cached_network_image/cached_network_image.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({Key? key, required this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? "",
        ),
      ),
    );
  }
}
