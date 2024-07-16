// ignore_for_file: avoid_unnecessary_containers, unused_import
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';
import 'package:news_app_ui_setup/widgets/news_list_views.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 9, 20),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 5, 9, 20),
        centerTitle: true,
        title: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'The',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'Scoop',
              style: TextStyle(
                  color: Color.fromARGB(255, 241, 145, 34),
                  fontSize: 20,
                  fontWeight: FontWeight.bold))
        ])),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 36.0)),
            const NewListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
