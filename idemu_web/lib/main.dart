import 'package:flutter/material.dart';
import 'package:idemu_web/content/content_product.dart';
import 'package:idemu_web/content/card_product.dart';
import 'package:idemu_web/content/content_header.dart';

import 'content/content_body.dart';
import 'content/content_tab.dart';
import 'header/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            ContentHeader(),
            SizedBox(height: 10),
            ContentTab(),
            SizedBox(height: 20),
            ContentBody(),
            SizedBox(height: 20),
            Contentproduct(),
            SizedBox(height: 20),
          ]
        ),
      ),
    );
  }
}

