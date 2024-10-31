abstract class Animal {
  String name;
  String type;
  String foodType;
  Animal(this.name, this.type, this.foodType);
}

class cat implements Animal {
  bool whiskers;

  @override
  String foodType;

  @override
  String name;

  @override
  String type;

  cat(this.whiskers, this.name, this.type, this.foodType);

  void nya() {
    print("Nya~~");
  }
}

sealed class dog extends Animal {
  dog(String name, String type, String foodType) : super(name, type, foodType);

  void gug() {
    print("Gug");
  }
}
