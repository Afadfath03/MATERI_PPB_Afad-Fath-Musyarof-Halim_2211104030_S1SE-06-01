import 'package:flutter/material.dart';

void main() => runApp(const HomeView());

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ini Home'),
        ),
        body: const Center(
          child: Text('Ini Home'),
        ),
      ),
    );
  }
}
