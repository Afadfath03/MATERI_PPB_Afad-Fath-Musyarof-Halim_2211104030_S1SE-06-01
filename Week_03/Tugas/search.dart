import 'dart:io';

void main() {
  List<List<int>> list = [
    [for (int i = 1; i <= 3; i++) i * 5],
    [for (int i = 1; i <= 4; i++) i * 2],
    [for (int i = 1; i <= 5; i++) i * i],
    [for (int i = 3; i < 9; i++) i]
  ];

  printOutput(list);
  print("");

  int cariAngka = 5;
  print("Bilangan yang dicari: $cariAngka");
  search(list, cariAngka);
}

void printOutput(List<List<int>> list) {
  for (var row in list) {
    for (var element in row) {
      stdout.write("$element ");
    }
    print("");
  }
}

bool search(List<List<int>> list, int angka) {
  print("$angka berada di: ");
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list[i].length; j++) {
      if (list[i][j] == angka) {
        print('baris ${i + 1} kolom ${j + 1}');
      }
    }
  }
  return true;
}
