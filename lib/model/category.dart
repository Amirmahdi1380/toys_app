class Category {
  final String imageUrl;
  final String name;

  Category({required this.imageUrl, required this.name});
}

List<Category> categories = [
  Category(
    imageUrl: 'categoty_1.jpg',
    name: 'ابزار شوخی',
  ),
  Category(
    imageUrl: 'category_2.jpg',
    name: 'تفنگ',
  ),
  Category(
    imageUrl: 'category_3.jpg',
    name: 'ماشین',
  ),
  Category(
    imageUrl: 'category_4.jpg',
    name: 'ساختنی',
  ),
  Category(
    imageUrl: 'category_5.jpg',
    name: 'لوازم ورزشی',
  ),
  Category(
    imageUrl: 'category_6.jpg',
    name: 'ایفای نقش',
  ),
  Category(
    imageUrl: 'category_7.jpg',
    name: 'توپ',
  ),
  // Add more categories as needed
];
