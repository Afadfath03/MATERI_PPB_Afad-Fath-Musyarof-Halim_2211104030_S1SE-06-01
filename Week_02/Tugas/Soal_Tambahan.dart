void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

// SOAL
// 1. Buatkan algoritma
//  a. Menghitung rerata dari IPK
//  b. Menjumlahkan berapa banyak mahasiswa yang sudah nikah
// 2. Masing-masing dari poin 1.a dan 1.b diimplementasikan dalam kode program

  // Deklarasi variabel
  double IPK = 0;
  double average = 0;
  int jmhNikah = 0;

  // Iterasikan index dari daftarMahasiswa
  for (int i = 0; i < daftarMahasiswa.length; i++) {
    // Mendapatkan data IPK
    IPK += daftarMahasiswa[i]["ipk"];

    // Mendapatkan data status menikah
    if (daftarMahasiswa[i]["isMarried"]) {
      jmhNikah++;
    }
  }
  // Menghitung rata-rata IPK
  average = IPK / daftarMahasiswa.length;

  // Print Output
  print("Rata-Rata IPK: $average \n");
  print("Jumlah Mahasiswa yang sudah menikah: $jmhNikah");
}
