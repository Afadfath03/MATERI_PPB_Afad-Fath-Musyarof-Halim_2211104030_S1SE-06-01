class Classroom with facility {
  String name;
  int capacity;
  String location;
  Classroom(this.name, this.capacity, this.location);
}

mixin facility {
  bool? tv;
  bool? projector;
}
