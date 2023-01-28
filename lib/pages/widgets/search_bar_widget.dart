import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/Colors/colors_list.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 100.0,

      ),
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.search,
            color:ColorsList.disableColor,
            size: 30.0,
          ),
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: ColorsList.disableColor,
            fontSize: 25.0,
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}