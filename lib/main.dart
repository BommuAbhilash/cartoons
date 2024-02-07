import 'package:cartoons/searchPage/search_page_new.dart';
import 'package:flutter/material.dart';
import 'color.dart';
import 'homePage/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: ColorPalette().scaffoldBg,
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({super.key});

  final List<String> images = [
    "assets/cheetah.png",
    "assets/lion.png",
    "assets/giraffe.png",
    "assets/tom.png",
  ];

  // void next() {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              width: 80,
              height: MediaQuery.of(context).size.height * 0.056,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: ColorPalette().buttonColor),
              child: TextButton(
                onPressed: () {},
                child: const Center(
                    child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Images(
            img: images,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return const SearchPageNew();
                }));
              },
              child: const Center(
                  child: Text(
                "Get Started",
                style: TextStyle(color: Colors.black, fontSize: 22),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
