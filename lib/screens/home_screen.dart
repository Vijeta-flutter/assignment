import 'package:assignment/providers/product_provider.dart';
import 'package:assignment/providers/theme_provider.dart';
import 'package:assignment/widgets/bottom_nav_bar.dart';
import 'package:assignment/widgets/category_list.dart';
import 'package:assignment/widgets/custom_app_bar.dart';
import 'package:assignment/widgets/offer_carousel.dart';
import 'package:assignment/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child:
                  productProvider.searchQuery.isNotEmpty &&
                          productProvider.fruitsAndVegetables.isEmpty &&
                          productProvider.dairyProducts.isEmpty
                      ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 64,
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withOpacity(0.5),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "No products found",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Try a different search term",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.bodySmall?.color,
                              ),
                            ),
                          ],
                        ),
                      )
                      : SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (productProvider.searchQuery.isEmpty) ...[
                              const SizedBox(height: 10),
                              const CategoryList(),
                              const SizedBox(height: 16),
                              const OfferCarousel(),
                              const SizedBox(height: 16),
                            ],
                            if (productProvider
                                .fruitsAndVegetables
                                .isNotEmpty) ...[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  "Fruits & Vegetables",
                                  style: Theme.of(context).textTheme.titleLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              ProductGrid(
                                products: productProvider.fruitsAndVegetables,
                              ),
                              const SizedBox(height: 16),
                            ],
                            if (productProvider.dairyProducts.isNotEmpty) ...[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  "Dairy & Breakfast",
                                  style: Theme.of(context).textTheme.titleLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              ProductGrid(
                                products: productProvider.dairyProducts,
                              ),
                              const SizedBox(height: 16),
                            ],
                          ],
                        ),
                      ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeProvider.toggleTheme();
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          isDarkMode ? Icons.light_mode : Icons.dark_mode,
          color: Colors.white,
        ),
      ),
    );
  }
}
