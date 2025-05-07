class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String quantity;
  final double price;
  final double originalPrice;
  final int discount;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.price,
    this.originalPrice = 0,
    this.discount = 0,
  });
}
