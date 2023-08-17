class Chef {
  final String name;
  final String imageUrl;
  final int numberOfRecipes;
  final double rating;

  Chef({
    required this.name,
    required this.imageUrl,
    required this.numberOfRecipes,
    required this.rating,
  });
}

List<Chef> chefs = [
  Chef(
      name: 'Diane Arthur',
      imageUrl: 'assets/images/chef6.jpeg',
      numberOfRecipes: 15,
      rating: 4.76),
  Chef(
      name: 'Andre Ryan',
      imageUrl: 'assets/images/chef14.jpeg',
      numberOfRecipes: 17,
      rating: 4.83),
  Chef(
      name: 'James Brown',
      imageUrl: 'assets/images/chef1.avif',
      numberOfRecipes: 12,
      rating: 4.82),
  Chef(
      name: 'Mike Dean',
      imageUrl: 'assets/images/chef2.avif',
      numberOfRecipes: 10,
      rating: 4.92),
  Chef(
      name: 'Eva Williams',
      imageUrl: 'assets/images/chef3.jpeg',
      numberOfRecipes: 13,
      rating: 4.71),
  Chef(
      name: 'Lillian Brown',
      imageUrl: 'assets/images/chef4.jpeg',
      numberOfRecipes: 12,
      rating: 4.93),
  Chef(
      name: 'Eva Williams',
      imageUrl: 'assets/images/chef5.jpeg',
      numberOfRecipes: 16,
      rating: 4.84),
  Chef(
      name: 'Gianna Smith',
      imageUrl: 'assets/images/chef7.jpeg',
      numberOfRecipes: 13,
      rating: 4.92),
  Chef(
      name: 'Jacqueline Rowling',
      imageUrl: 'assets/images/chef8.jpeg',
      numberOfRecipes: 11,
      rating: 4.76),
  Chef(
      name: 'George Adams',
      imageUrl: 'assets/images/chef9.jpeg',
      numberOfRecipes: 10,
      rating: 4.88),
  Chef(
      name: 'Dame Carter',
      imageUrl: 'assets/images/chef10.jpeg',
      numberOfRecipes: 13,
      rating: 4.73),
  Chef(
      name: 'Shawn Johnson',
      imageUrl: 'assets/images/chef11.jpeg',
      numberOfRecipes: 12,
      rating: 4.61),
  Chef(
      name: 'Michael Bronny',
      imageUrl: 'assets/images/chef12.jpeg',
      numberOfRecipes: 10,
      rating: 4.72),
  Chef(
      name: 'Sean Paul',
      imageUrl: 'assets/images/chef13.jpeg',
      numberOfRecipes: 14,
      rating: 4.94),
  Chef(
      name: 'Robert William',
      imageUrl: 'assets/images/chef15.jpeg',
      numberOfRecipes: 12,
      rating: 4.9),
];
