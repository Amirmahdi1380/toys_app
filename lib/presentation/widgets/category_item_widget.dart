

import 'package:flutter/cupertino.dart';
import 'package:toys/domain/models/category.dart';

import '../../config/config.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category category;
  double size = 72;
  CategoryItemWidget({super.key, required this.category, this.size = 72});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(smallDistance),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: smallDistance),
            child: ClipRRect(
              borderRadius:
              const BorderRadius.all(Radius.circular(mediumRadius)),
              child: Image.asset(
                'assets/images/${category.imageUrl}',
                fit: BoxFit.fill,
                height: size,
                width: size,
              ),
            ),
          ),
          const SizedBox(
            height: smallDistance,
          ),
          Text(
            category.name,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
