import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class Item {
  final String judul;
  final String detail;

  Item({required this.judul, required this.detail});
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Item> items = [
    Item(
        judul: 'Android',
        detail:
            'Flutter adalah framework untuk membuat aplikasi Android dan iOS'),
    Item(
        judul: 'Windows',
        detail: 'Flutter juga bisa digunakan untuk membuat aplikasi Windows'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: const Text('ListView',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              );
              return ListTile(
                title: Text(items[index].judul),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Detail ${items[index].judul}"),
                        content: Text(items[index].detail),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Tutup'),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          )),
    );
  }
}
