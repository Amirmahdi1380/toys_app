import 'package:flutter/material.dart';
import 'package:toys/config/config.dart';

class ProfileHeadWidget extends StatelessWidget {
  const ProfileHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: Colors.grey.withOpacity(0.4),
          padding: const EdgeInsets.all(mediumDistance),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(48.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.white,
                          child: const Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: mediumDistance,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('hadi (هادی)'),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '09123456789',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('کاربر ویژه'),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: smallDistance,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: mediumDistance,
              ),
              Container(
                padding: const EdgeInsets.all(smallDistance),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(smallRadius),
                    color: Colors.grey),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'موجودی کیف پول',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: largeDistance,
                    ),
                    Text(
                      '0 تومان',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: mediumDistance,
              )
            ],
          ),
        ));
  }
}
