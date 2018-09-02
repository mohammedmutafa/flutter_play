import 'package:flutter/material.dart';

class ProductThumbnail extends StatelessWidget {
  final String thumbnailUrl;
  final id;
  ProductThumbnail(this.thumbnailUrl, this.id);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id,
      child: FadeInImage(
        image: NetworkImage(thumbnailUrl),
        placeholder: AssetImage('assets/x.jpg'),
        height: 80.0,
        width: 80.0,
        fit: BoxFit.cover,
      ),
    );
  }
}