import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas7/display.dart';

void main() {
  runApp(const PageInput());
}

class PageInput extends StatelessWidget {
  const PageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shared Preferences',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: InputPage(),
    );
  }
}

class InputPage extends StatelessWidget {
  InputPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController classController = TextEditingController();

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', nameController.text);
    await prefs.setString('nim', nimController.text);
    await prefs.setString('class', classController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              controller: classController,
              decoration: const InputDecoration(labelText: 'Kelas'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await saveData();
              },
              child: const Text('Simpan Data'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageDisplay()),
                );
              },
              child: const Text('Lihat Data'),
            ),
          ],
        ),
      ),
    );
  }
}
