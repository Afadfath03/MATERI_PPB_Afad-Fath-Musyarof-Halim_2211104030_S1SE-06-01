import 'dart:ffi';

void main() {
  print("");
//   int angka; // Deklarasi
//   angka = 1; // Inisiasi
//   String nama; // Deklarasi
//   nama = "Afad"; // Inisiasi

//   bool isHuman = true; // Boolean true
//   bool isExist = false; // Boolean false

//   int x = 9; // integer
//   double Pi = 3.14; // Double (Floating Point)

//   String hewan = "Anjing"; // String

//   // print("\n" + hewan);

// //* Comment
// // Multiline
// //
// //
// //*/

//   var inisial = "AFMH"; // Var
//   // inisial = 123;  // hanya bisa 1 tipe
//   // inisial = "Af"; // Tidak Error

//   dynamic nom = "Neo"; // Dynamic
//   // nom = 1092; // bisa berubah tergantung tipe input

//   // print(nom + " " + inisial);

//   List<dynamic> name = [
//     ["Afad", "Aubrey"],
//     ['L', 'P'],
//     [20, 21]
//   ];

  // print(name[0][1]);

  // name[0][1] = "Agil";

  // print(name[0][1]);

  // name[0][1] = "No name";

  // print(name[0][1]);

  List<Map<String, dynamic>> dataSiswa = [
    {"Nama": "Afad", "Status": "Menunggu kehidupan", "IPK": 4.0},
    {"Nama": "Aubrey", "Status": "Jomblo", "IPK": 4.0},
  ];

  print(dataSiswa[0]["IPK"]);
}
