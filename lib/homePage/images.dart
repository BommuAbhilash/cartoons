import 'package:flutter/material.dart';
import '../homePage/buildDots.dart';

class Images extends StatefulWidget {
  const Images({
    super.key,
    required this.img,
  });
  final List<String> img;

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  var num = 0;

  int next() {
    setState(() {
      if (num < 3) {
        num++;
      } else {
        num = 0;
      }
    });
    return num;
  }

  int previous() {
    setState(() {
      if (num > 0) {
        num--;
      } else {
        num = 3;
      }
    });
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.76,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.img[num]), fit: BoxFit.fitHeight)),
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: next,
                          child: Container(
                            width: MediaQuery.of(context).size.width - 20,
                            height: 300,
                            color: Colors.transparent,
                          ),
                        ),
                        GestureDetector(
                          onTap: previous,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 300,
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            child: const Text(
              "Chat with your favorite AI",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              "Chat with the smartest AI - experience the power of AI with us",
              style: TextStyle(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildDots(currentIndex: num,),
            ],
          ),
        ],
      ),
    );
  }
}
