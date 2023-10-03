import 'package:flutter/material.dart';

import '../../domain/models/warranty.dart';


class WarrantyContainer extends StatelessWidget {
  const WarrantyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  child: Image.asset(
                    'assets/images/${warranty[index].imageUrl}',
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                warranty[index].name,
                style: const TextStyle(fontSize: 13),
              )
            ],
          );
        },
        itemCount: warranty.length,
      ),
    );
  }
}
