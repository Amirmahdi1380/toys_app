class Warranty {
  final String imageUrl;
  final String name;

  Warranty({required this.imageUrl, required this.name});
}

List<Warranty> warranty = [
  Warranty(
    imageUrl: 'ga_2.jpg',
    name: 'ضمانت بازگشت کالا',
  ),
  Warranty(
    imageUrl: 'ga_1.jpg',
    name: 'پشتیبانی ۲۴ساعته',
  ),
  Warranty(
    imageUrl: 'ga_3.jpg',
    name: 'ضمانت سلامت',
  ),

  // Add more categories as needed
];
