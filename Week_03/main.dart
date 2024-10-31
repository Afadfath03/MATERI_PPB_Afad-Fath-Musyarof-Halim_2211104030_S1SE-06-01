// import 'animal.dart';
//
// void main() {
//   // cat Tom = cat(true, "Tom", "Cat", "Omnivora");

//   // dog inu = dog("Inu", "Dog", "Omnivora");

//   // Tom.nya();
//   // inu.gug();
// }

import 'classroom.dart';

void main() {
  Classroom IOT = Classroom("IOT", 10, "Gedung IOT");
  print(IOT.tv);
  IOT.tv = true;
  print(IOT.tv);
}
