// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class ArticleWebView extends StatefulWidget {
  // Define the 'controller' variable
  final ArticleModel articleModel;
  const ArticleWebView({super.key, required this.articleModel});

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.articleModel.url!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: const Color.fromARGB(255, 255, 255, 255),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            widget.articleModel.title,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 5, 9, 20),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 9, 20),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
