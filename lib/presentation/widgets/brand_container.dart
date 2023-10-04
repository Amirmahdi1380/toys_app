import 'package:flutter/material.dart';

class BrandContainer extends StatelessWidget {
  const BrandContainer({
    super.key,
    required this.brandImage,
  });

  final List<String> brandImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/images/${brandImage[index]}',
            ),
          );
        },
        itemCount: brandImage.length,
      ),
    );
  }
}