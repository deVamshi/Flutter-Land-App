import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('ran');
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.red,
      child: Container(
        height: 500,
        width: 500,
      ),
    );
  }
}
