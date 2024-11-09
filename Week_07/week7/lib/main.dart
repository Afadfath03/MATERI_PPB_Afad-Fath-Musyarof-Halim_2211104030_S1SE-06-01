import 'package:flutter/material.dart';
import 'package:week7/design_system/styles/color_collection.dart';
import 'package:week7/design_system/styles/font.dart';
import 'package:week7/design_system/styles/spacing_collection.dart';
import 'package:week7/design_system/styles/typography_collection.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('KUCING',
              style: TextStyle(fontSize: font_size.h1, color: Colors.white)),
          backgroundColor: ColorCollection.primary,
        ),
        body: Column(
          children: [
            SizedBox(height: SpacingCollection.large),
            Center(
              child: Text(
                'NYAA~~',
              ),
            ),
            SizedBox(height: SpacingCollection.large),
            Center(
              child: Text(
                'NYAA~~',
                style: TextStyle(
                    fontSize: title_size.t2, color: ColorCollection.primary),
              ),
            ),
            SizedBox(height: SpacingCollection.large),
            Center(
              child: Text(
                'NYAA~~',
                style: TextStyle(
                    fontSize: title_size.t1, color: ColorCollection.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
