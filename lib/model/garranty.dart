class Garranty {
  final String imageUrl;
  final String name;

  Garranty({required this.imageUrl, required this.name});
}

List<Garranty> garranty = [
  Garranty(
    imageUrl: 'ga_2.jpg',
    name: 'ضمانت بازگشت کالا',
  ),
  Garranty(
    imageUrl: 'ga_1.jpg',
    name: 'پشتیبانی ۲۴ساعته',
  ),
  Garranty(
    imageUrl: 'ga_3.jpg',
    name: 'ضمانت سلامت',
  ),

  // Add more categories as needed
];
