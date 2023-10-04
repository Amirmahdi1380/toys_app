import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toys/config/config.dart';
import 'package:toys/presentation/widgets/category_item_widget.dart';

import '../../domain/models/category.dart';
import '../widgets/appbar_container.dart';
import '../widgets/brand_container.dart';
import '../widgets/search_box.dart';
import '../widgets/warranty_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

PageController _pageController = PageController();
int _currentPage = 0;

class _HomeScreenState extends State<HomeScreen> {
  final List<String> appBarImage = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png'
  ];
  final List<String> brandImage = [
    'brand_1.jpg',
    'brand_2.jpg',
    'brand_3.jpg',
    'brand_4.jpg',
  ];
  final List<String> bannerImage = [
    'banner_1.jpg',
    'banner_2.jpg',
    'banner_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Container(
          margin: EdgeInsets.only(bottom: 32),
          child:  SingleChildScrollView(
            child: Column(
              children: [
                AppBarContainer(appBarImage: appBarImage),
                const SearchBox(),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: smallDistance),
                      child: SizedBox(
                        height: 200,
                        child: PageView.builder(
                          itemCount: bannerImage.length,
                          controller: _pageController,
                          allowImplicitScrolling: true,
                          onPageChanged: (index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/${bannerImage[index]}',
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.45,
                      bottom: 10,
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        onDotClicked: (index) {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        count: bannerImage.length,
                        effect: const WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          type: WormType.thin,
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: mediumDistance, horizontal: smallDistance),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'دسته بندی محصولات',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 128,
                  child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryItemWidget(category: categories[index]);
                    },
                    itemCount: categories.length,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: mediumDistance, horizontal: smallDistance),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'برترین برند ها',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                BrandContainer(brandImage: brandImage),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: mediumDistance, horizontal: smallDistance),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'تخفیف ها',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const WarrantyContainer(),
                SizedBox(height: 64,)
              ],
            ),
          ),
        )
      ),
    );
  }
}
