import 'package:tugas7/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const PageDisplay());

class PageDisplay extends StatelessWidget {
  const PageDisplay({super.key});

  Future<Map<String, String>> getData() async {
    final prefs = await SharedPreferences.getInstance();
    final nama = prefs.getString('name') ?? 'Tidak ada data';
    final nim = prefs.getString('nim') ?? 'Tidak ada data';
    final kelas = prefs.getString('class') ?? 'Tidak ada data';
    return {'name': nama, 'nim': nim, 'class': kelas};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Display'), actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageInput()),
            );
          },
        ),
      ]),
      body: FutureBuilder<Map<String, String>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final data = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: ${data['name']}'),
                  const SizedBox(height: 8),
                  Text('NIM: ${data['nim']}'),
                  const SizedBox(height: 8),
                  Text('Kelas: ${data['class']}'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
