import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/texts/section_heading.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: "Shipping Address", buttonTitle: "Change", onPressed: () {},),
        Text("Sahan Gunawardhana", style: Theme.of(context).textTheme.bodyLarge,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: 8,),
            Text("0123456789", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: 8,),
        Row(
          children: [
            const Icon(Icons.location_pin, color: Colors.grey, size: 16,),
            const SizedBox(width: 8,),
            Text("123, Flower Street, Kandy", style: Theme.of(context).textTheme.bodyMedium, softWrap: true,),
          ],
        ),
      ],
    );
  }
}
