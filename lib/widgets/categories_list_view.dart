import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
      CategoryName: 'Sports',
      CategoryImage: 'assets/sports.jpeg',
    ),
    CategoryModel(
      CategoryName: 'Business',
      CategoryImage: 'assets/business.avif',
    ),
    CategoryModel(
      CategoryName: 'Entertainment',
      CategoryImage: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      CategoryName: 'Health',
      CategoryImage: 'assets/health.avif',
    ),
    CategoryModel(
      CategoryName: 'Science',
      CategoryImage: 'assets/science.avif',
    ),
    CategoryModel(
      CategoryName: 'Technology',
      CategoryImage: 'assets/technology.jpeg',
    ),
     CategoryModel(
      CategoryName: 'General',
      CategoryImage: 'assets/general.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return CategoryCard(category: categories[index]);
        }),
      ),
    );
  }
}
