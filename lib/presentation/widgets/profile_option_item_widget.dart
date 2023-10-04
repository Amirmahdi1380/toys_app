import 'package:flutter/material.dart';
import 'package:toys/config/config.dart';
import 'package:toys/presentation/models/profile_option_item.dart';

class ProfileOptionItemWidget extends StatelessWidget {
  final ProfileOptionItem profileOptionItem;

  const ProfileOptionItemWidget({super.key, required this.profileOptionItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          padding: const EdgeInsets.symmetric(
              vertical: smallDistance, horizontal: largeDistance),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(smallRadius),
                    color: Colors.blueGrey.withOpacity(0.2)),
                child: Icon(
                  profileOptionItem.icon,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: mediumDistance,
              ),
              Text(
                profileOptionItem.label,
                style: const TextStyle(fontSize: 18),
              ),
              const Expanded(child: SizedBox()),
              Icon(
                Icons.navigate_next_rounded,
                size: 32,
                color: Colors.grey.withOpacity(0.6),
              )
            ],
          ),
        ));
  }
}
