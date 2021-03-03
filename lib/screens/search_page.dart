import 'package:flutter/material.dart';
import 'package:flutter_land/components/search_bar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SearchBar(),
      ],
    );
  }
}
