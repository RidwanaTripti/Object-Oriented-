class Performer {
  void perform() => print("perform...");
}

mixin Dancer on Performer {
  void workasdancer() => print("dancer");
  // void perform() => workasdancer();
  void perform() => super.perform();
}
mixin Actor {
  void workasactor() => print("actor");
  void perform() => workasactor();
  // void perform() => super.perform();
}
mixin Singer {
  void workassinger() => print("singer");
  void perform() => workassinger();
  // void perform() => super.perform();
}

class Celebrety extends Performer with Dancer, Actor, Singer {}

void main() {
  Celebrety celebrety = Celebrety();
  celebrety.perform();
}
