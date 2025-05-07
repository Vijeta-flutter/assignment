import 'package:assignment/data/dummy_data.dart' as dummy_data;
import 'package:assignment/models/category.dart';
import 'package:assignment/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _allFruitsAndVegetables = dummy_data.fruitsAndVegetables;
  final List<Product> _allDairyProducts = dummy_data.dairyProducts;

  late List<Product> _filteredFruitsAndVegetables;
  late List<Product> _filteredDairyProducts;

  String _searchQuery = '';

  ProductProvider() {
    _filteredFruitsAndVegetables = _allFruitsAndVegetables;
    _filteredDairyProducts = _allDairyProducts;
  }

  List<Product> get fruitsAndVegetables => _filteredFruitsAndVegetables;
  List<Product> get dairyProducts => _filteredDairyProducts;
  List<Category> get categories => dummy_data.allCategories;
  List<String> get offerBanners => dummy_data.bannerImages;

  String get searchQuery => _searchQuery;

  void search(String query) {
    _searchQuery = query;

    if (query.isEmpty) {
      _filteredFruitsAndVegetables = _allFruitsAndVegetables;
      _filteredDairyProducts = _allDairyProducts;
    } else {
      _filteredFruitsAndVegetables =
          _allFruitsAndVegetables
              .where(
                (product) =>
                    product.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();

      _filteredDairyProducts =
          _allDairyProducts
              .where(
                (product) =>
                    product.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    }

    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    _filteredFruitsAndVegetables = _allFruitsAndVegetables;
    _filteredDairyProducts = _allDairyProducts;
    notifyListeners();
  }
}
