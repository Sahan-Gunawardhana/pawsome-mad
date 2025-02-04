import 'package:flutter/material.dart';

class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$50.0", style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$10.0", style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax ", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$10.0", style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total ", style: Theme.of(context).textTheme.titleMedium,),
            Text("\$70.0", style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      ],
    );
  }
}
