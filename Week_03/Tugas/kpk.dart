int cariFPB(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return cariFPB(b, a % b);
  }
}

int cariKPK(int a, int b) {
  return (a * b) ~/ cariFPB(a, b);
}

void main() {
  int num1 = 12;
  int num2 = 18;

  print("Bilangan 1 : $num1");
  print("Bilangan 2 : $num2");
  print("KPK dari $num1 dan $num2 adalah: ${cariKPK(num1, num2)}");
}
