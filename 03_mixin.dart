class Performer {
  void perform() => print("perform...");
}

mixin Dancer {
  void workasdancer() => print("dancer");
  // void perform() => workasdancer();
}
mixin Actor {
  void workasactor() => print("actor");
  // void perform() => workasactor();
}
mixin Singer on Performer {
  void workassinger() => print("singer");
  // void perform() => workassinger();
  void perform() => super.perform();
}

class Celebrety extends Performer with Dancer, Actor, Singer {}

void main() {
  Celebrety celebrety = Celebrety();
  celebrety.perform();
}