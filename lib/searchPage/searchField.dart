import 'package:flutter/material.dart';
import '../color.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: ColorPalette().buttonColor),
        child: const Center(
          child: TextField(
            clipBehavior: Clip.none,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white24,
                  size: 36,
                ),
                hintText: "Search anything",
                hintStyle: TextStyle(fontSize: 22, color: Colors.white24)),
          ),
        ),
      ),
    );
  }
}
