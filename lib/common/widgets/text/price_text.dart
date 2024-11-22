import 'package:flutter/material.dart';

class ProductsPriceText extends StatelessWidget {
  const ProductsPriceText({
    super.key,
     this.maxLines = 1,
     this.isLarge = false,
     this.lineThrough = false,  this.currencySign  = "₹", required this.price,
  });
  final String currencySign , price;

  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
    currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null):Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
    );
  }
}
