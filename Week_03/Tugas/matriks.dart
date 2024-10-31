import 'dart:math';

void main() {
  int baris = 3;
  int kolom = 2;
  print("Jumlah baris: $baris");
  print("Jumlah kolom: $kolom");
  print("");

  // Generate Matrix
  List<List<int>> matrix = generateMatrix(baris, kolom);
  print("Matrix:");
  printMatrix(matrix);
  print("");

  // Transpose Matrix
  List<List<int>> transposedMatrix = transposeMatrix(matrix);
  print("Transposed Matrix:");
  printMatrix(transposedMatrix);
}

List<List<int>> generateMatrix(int rows, int cols) {
  Random random = Random();
  List<List<int>> matrix = List.generate(
      rows, (_) => List.generate(cols, (_) => random.nextInt(100)));
  return matrix;
}

List<List<int>> transposeMatrix(List<List<int>> matrix) {
  int baris = matrix.length;
  int kolom = matrix[0].length;
  List<List<int>> tMatrix =
      List.generate(kolom, (_) => List.generate(baris, (_) => 0));

  for (int i = 0; i < baris; i++) {
    for (int j = 0; j < kolom; j++) {
      tMatrix[j][i] = matrix[i][j];
    }
  }

  return tMatrix;
}

void printMatrix(List<List<int>> matrix) {
  for (List<int> row in matrix) {
    print(row);
  }
}
