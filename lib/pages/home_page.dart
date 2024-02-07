import 'package:cartoons/searchPage/carousel.dart';
import 'package:cartoons/searchPage/image_card.dart';
import 'package:cartoons/searchPage/searchField.dart';
import 'package:cartoons/searchPage/search_page_new.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SearchField(),
        ),
        SliverToBoxAdapter(child: Carousel(cardDetails: carouselCards)),
        SliverGrid.builder(
          itemCount: cards.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.58,
          ),
          itemBuilder: (context, index) => ImageCard(
            cardDetails: cards[index],
          ),
        ),
      ],
    );
  }
}
