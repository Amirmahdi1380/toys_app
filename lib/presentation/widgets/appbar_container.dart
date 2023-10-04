import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.appBarImage,
  });

  final List<String> appBarImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.amber),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/${appBarImage[index]}',
            width: MediaQuery.of(context).size.width / 6,
            height: 60,
            fit: BoxFit.contain,
          );
        },
        itemCount: appBarImage.length,
      ),
    );
  }
}
