import 'package:flutter/material.dart';
import 'package:toys/presentation/models/profile_option_item.dart';
import 'package:toys/presentation/widgets/profile_head_widget.dart';
import 'package:toys/presentation/widgets/profile_option_item_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.8),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black,
              ),
              const ProfileHeadWidget(),
              Column(
                children: List.generate(profileOptions.length, (index)  {
                  return ProfileOptionItemWidget(profileOptionItem: profileOptions[index]);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
