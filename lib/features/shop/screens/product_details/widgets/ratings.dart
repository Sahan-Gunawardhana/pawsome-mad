import 'package:flutter/material.dart';

class RatingsAndShare extends StatelessWidget {
  const RatingsAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Icon(
            Icons.star_rounded,
            color: Colors.amber,
            size: 24,
          ),
          SizedBox(
            width: 8,
          ),
          Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: "4.0", style: Theme.of(context).textTheme.labelLarge),
                    TextSpan(text: ' (13)', style: Theme.of(context).textTheme.labelLarge)
                  ]
              )
          )
        ]),
        IconButton(onPressed: () {}, icon: Icon(Icons.share_rounded, size: 24,))
      ],
    );
  }
}
