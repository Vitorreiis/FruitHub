class Product {
  final String image, title, description;
  final int id;
  final double price;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: 'assets/product2.png',
    title: 'Honey lime combo',
    price: 2.000,
    description: 'If you are looking for a new fruit salad to eat '
        'today, quinoa is the perfect brunch for you. make',
  ),
  Product(
      id: 2,
      image: 'assets/product1.png',
      title: 'Berry mango combo',
      price: 2.000,
      description: 'If you are looking for a new fruit salad to eat '
          'today, quinoa is the perfect brunch for you. make',
  ),
  Product(
    id: 3,
    image: 'assets/product3.png',
    title: 'Quinoa fruit salad',
    price: 10.000,
    description: 'If you are looking for a new fruit salad to eat '
        'today, quinoa is the perfect brunch for you. make',
  ),
  Product(
    id: 4,
    image: 'assets/product4.png',
    title: 'Tropical fruit salad',
    price: 10.000,
    description: 'If you are looking for a new fruit salad to eat '
        'today, quinoa is the perfect brunch for you. make',
  ),
  Product(
    id: 5,
    image: 'assets/product5.png',
    title: 'Melon fruit salad',
    price: 10.000,
    description: 'If you are looking for a new fruit salad to eat '
        'today, quinoa is the perfect brunch for you. make',
  ),
];