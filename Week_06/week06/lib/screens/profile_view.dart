import 'package:flutter/material.dart';

void main() => runApp(const ProfileView());

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ini Profile'),
        ),
        body: const Center(
          child: Text('Ini Profile'),
        ),
      ),
    );
  }
}
