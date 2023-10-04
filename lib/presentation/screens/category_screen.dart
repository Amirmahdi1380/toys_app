import 'package:flutter/material.dart';
import 'package:toys/config/config.dart';
import 'package:toys/domain/models/category.dart';
import 'package:toys/presentation/widgets/category_item_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/banner_3.jpg',
                height: 200,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.deepPurple.withOpacity(0.8),
                width: double.infinity,
                height: 200,
              ),
              const SizedBox(
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.category,
                      size: 48,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: mediumDistance,
                    ),
                    Text(
                      'دسته بندی ها',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0, 184.0, .0),
            padding: const EdgeInsets.symmetric(
                vertical: largeDistance, horizontal: smallDistance),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(mediumRadius))),
            child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: largeDistance, horizontal: smallDistance),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(mediumRadius))),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 368,
                    child: GridView.count(
                      childAspectRatio: 0.8,
                      crossAxisCount: 3,
                      children: List.generate(categories.length, (index) {
                        return CategoryItemWidget(
                          category: categories[index],
                          size: 96,
                        );
                      }),
                    ),
                  ),
                )),
          )
        ],
      ),
    )));
  }
}
