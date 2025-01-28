import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle(
  {super.key,
  required this.title,
  this.smallSize = false,
  this.maxLines = 2,
  this.textAlign = TextAlign.left});

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize? Theme.of(context).textTheme.titleSmall : Theme.of(context).textTheme.titleLarge,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
