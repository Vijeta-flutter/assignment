import 'package:assignment/models/category.dart';
import 'package:assignment/models/product.dart';

final List<Category> allCategories = [
  Category(
    id: '1',
    name: 'Fruits & Vegetables',
    imageUrl: 'assets/images/categories/fruits.jpg',
  ),
  Category(
    id: '2',
    name: 'Dairy & Breakfast',
    imageUrl: 'assets/images/categories/dairy.jpg',
  ),
  Category(
    id: '3',
    name: 'Snacks',
    imageUrl: 'assets/images/categories/snacks.jpg',
  ),
  Category(
    id: '4',
    name: 'Cold Drinks',
    imageUrl: 'assets/images/categories/drinks.jpg',
  ),
  Category(
    id: '5',
    name: 'Bakery',
    imageUrl: 'assets/images/categories/bakery.jpg',
  ),
  Category(
    id: '6',
    name: 'Personal Care',
    imageUrl: 'assets/images/categories/personal_care.jpg',
  ),
  Category(
    id: '7',
    name: 'Home Care',
    imageUrl: 'assets/images/categories/home_care.png',
  ),
  Category(
    id: '8',
    name: 'Baby Care',
    imageUrl: 'assets/images/categories/baby_care.jpg',
  ),
];

final List<String> bannerImages = [
  'assets/images/banners/banner1.jpg',
  'assets/images/banners/banner2.jpg',
  'assets/images/banners/banner3.jpg',
  'assets/images/banners/banner4.jpg',
];

final List<Product> fruitsAndVegetables = [
  Product(
    id: '1',
    name: 'Fresh Apples',
    imageUrl: 'assets/images/products/apple.jpg',
    quantity: '1 kg',
    price: 99.0,
    originalPrice: 120.0,
    discount: 17,
  ),
  Product(
    id: '2',
    name: 'Organic Bananas',
    imageUrl: 'assets/images/products/banana.jpg',
    quantity: '6 pcs',
    price: 49.0,
    originalPrice: 60.0,
    discount: 18,
  ),
  Product(
    id: '3',
    name: 'Fresh Tomatoes',
    imageUrl: 'assets/images/products/tomato.jpg',
    quantity: '500 g',
    price: 35.0,
  ),
  Product(
    id: '4',
    name: 'Onions',
    imageUrl: 'assets/images/products/onion.jpg',
    quantity: '1 kg',
    price: 39.0,
    originalPrice: 50.0,
    discount: 22,
  ),
];

final List<Product> dairyProducts = [
  Product(
    id: '5',
    name: 'Amul Milk',
    imageUrl: 'assets/images/products/milk.png',
    quantity: '500 ml',
    price: 27.0,
  ),
  Product(
    id: '6',
    name: 'Amul Butter',
    imageUrl: 'assets/images/products/butter.jpg',
    quantity: '100 g',
    price: 49.0,
    originalPrice: 55.0,
    discount: 10,
  ),
  Product(
    id: '7',
    name: 'Eggs',
    imageUrl: 'assets/images/products/eggs.jpg',
    quantity: '6 pcs',
    price: 42.0,
  ),
  Product(
    id: '8',
    name: 'Cheese Slices',
    imageUrl: 'assets/images/products/cheese.jpg',
    quantity: '10 slices',
    price: 110.0,
    originalPrice: 130.0,
    discount: 15,
  ),
];
