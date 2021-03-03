import 'package:flutter/material.dart';
import 'package:flutter_land/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController textEditingController;

  const SearchBar({this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: kMainColor, width: 1),
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextField(
            onChanged: (value) async {},
            controller: textEditingController,
            style: GoogleFonts.lato(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search...",
              hintStyle: GoogleFonts.lato(color: Colors.grey),
            ),
          ))
        ],
      ),
    );
  }
}
