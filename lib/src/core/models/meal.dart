class Meal {
  final String name;
  final String imageUrl;
  final String chef;
  final String chefImageUrl;
  final String duration;

  Meal({
    required this.name,
    required this.imageUrl,
    required this.chef,
    required this.chefImageUrl,
    required this.duration,
  });
}

final List<Meal> meals = [
  Meal(
      name: 'Steak',
      imageUrl: 'assets/images/steak.jpeg',
      chef: 'Michael Bronny',
      chefImageUrl: 'assets/images/chef12.jpeg',
      duration: '1 hr'),
  Meal(
      name: 'Spaghetti',
      imageUrl: 'assets/images/spag.jpeg',
      chef: 'Robert William',
      chefImageUrl: 'assets/images/chef15.jpeg',
      duration: '20 min'),
  Meal(
      name: 'Sushi',
      imageUrl: 'assets/images/sushi.jpeg',
      chef: 'Diane Arthur',
      chefImageUrl: 'assets/images/chef6.jpeg',
      duration: '1.5 hr'),
  Meal(
      name: 'Burger',
      imageUrl: 'assets/images/burger.jpeg',
      chef: 'Andre Ryan',
      chefImageUrl: 'assets/images/chef14.jpeg',
      duration: '1 hr'),
  Meal(
      name: 'Pizza',
      imageUrl: 'assets/images/pizza.jpeg',
      chef: 'Gianna Smith',
      chefImageUrl: 'assets/images/chef7.jpeg',
      duration: '45 min'),
  Meal(
      name: 'Fried rice',
      imageUrl: 'assets/images/friedrice.jpeg',
      chef: 'Lillian Brown',
      chefImageUrl: 'assets/images/chef4.jpeg',
      duration: '1 hr'),
  Meal(
      name: 'Jollof',
      imageUrl: 'assets/images/jollof2.jpg',
      chef: 'Mike Dean',
      chefImageUrl: 'assets/images/chef2.avif',
      duration: '45 Min'),
  Meal(
      name: 'Waakye',
      imageUrl: 'assets/images/waakye.jpeg',
      chef: 'Eva Williams',
      chefImageUrl: 'assets/images/chef5.jpeg',
      duration: '1.5 hr'),
];
