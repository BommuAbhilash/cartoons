import 'package:cartoons/models/card_details.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.cardDetails,
  });
  final List<CarouselDetails> cardDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.325,
      child: PageView.builder(
        itemCount: cardDetails.length,
        itemBuilder:(context, index) =>  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                      image: AssetImage(
                        cardDetails[index].img,
                      ),
                      fit: BoxFit.fitWidth)),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              cardDetails[index].label,
              style: const TextStyle(
                  color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "${cardDetails[index].time.toString()} min ago",
              style: const TextStyle(
                  color: Colors.white24, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
