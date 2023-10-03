import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toys/model/category.dart';

import '../model/warranty.dart';
import '../widgets/Appbar_container.dart';
import '../widgets/brand_container.dart';
import '../widgets/garranty_container.dart';
import '../widgets/search_box.dart';

class Toys extends StatefulWidget {
  const Toys({super.key});

  @override
  State<Toys> createState() => _ToysState();
}

PageController _pageController = PageController();
int _currentPage = 0;

class _ToysState extends State<Toys> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarContainer(appBarImage: appBarImage),
              const SearchBox(),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'دسته بندی محصولات',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 102,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(
                              'assets/images/${categories[index].imageUrl}',
                              height: 70,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          categories[index].name,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    );
                  },
                  itemCount: categories.length,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'برترین برند ها',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              brandContainer(brandImage: brandImage),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تخفیف ها',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const GarrantyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
