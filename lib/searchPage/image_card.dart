import 'package:cartoons/models/card_details.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key, required this.cardDetails,
    
  });
  final CardDetails cardDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          width: 290,
          height: 220,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  image: AssetImage(cardDetails.img),
                  fit: BoxFit.fitHeight)),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          cardDetails.label,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "${cardDetails.time.toString()} min ago",
          style: const TextStyle(
              color: Colors.white24, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
