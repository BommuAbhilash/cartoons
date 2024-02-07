import 'package:cartoons/models/card_details.dart';
import 'package:cartoons/pages/chat_page.dart';
import 'package:cartoons/pages/home_page.dart';
import 'package:cartoons/pages/profile_page.dart';
import 'package:cartoons/pages/search_page.dart';
import 'package:cartoons/pages/settings_page.dart';
import 'package:flutter/material.dart';

List<CardDetails> cards = [
  CardDetails(img: "assets/dog.jpg", label: "Dog simulation 3D", time: 1),
  CardDetails(img: "assets/bird.jpg", label: "Birds on Internet", time: 2),
  CardDetails(img: "assets/cat.jpg", label: "Christmas Dogs", time: 5),
  CardDetails(img: "assets/newyear.jpg", label: "Happy New Year", time: 10),
  CardDetails(img: "assets/panda.jpg", label: "Mountain Panda", time: 40),
];

List<CarouselDetails> carouselCards = [
  CarouselDetails(
      img: "assets/family.jpg", label: "Dog simulation 3D", time: 1),
  CarouselDetails(img: "assets/bunny.jpg", label: "Birds on Internet", time: 2),
  CarouselDetails(img: "assets/bunny1.jpg", label: "Christmas Dogs", time: 5),
  CarouselDetails(img: "assets/runner.jpg", label: "Happy New Year", time: 10),
  CarouselDetails(img: "assets/dog.jpg", label: "Mountain Panda", time: 40),
];

class SearchPageNew extends StatefulWidget {
  const SearchPageNew({super.key});

  @override
  State<SearchPageNew> createState() => _SearchPageNewState();
}

class _SearchPageNewState extends State<SearchPageNew> {
  late int currentPage = 0;
  late PageController controller = PageController(initialPage: currentPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ChatPage(),
          SearchPage(),
          HomePage(),
          SettingsPage(),
          ProfilePage(),
        ],
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
      
      bottomNavigationBar: 
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPage,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            onTap: (value) {
              setState(() {
                currentPage = value;
                controller.jumpToPage(
                  value,
                );
              });
            },
          ),
        
    );
  }
}
