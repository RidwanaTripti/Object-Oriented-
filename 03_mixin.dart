class Performer {
  void perform() => print("perform...");
}

mixin Dancer {
  void workasdancer() => print("dancer");
  void perform() => workasdancer();
  // void perform() => super.perform();
}
mixin Actor on Performer {
  void workasactor() => print("actor");
  // void perform() => workasactor();
  void perform() => super.perform();
}
mixin Singer on Performer {
  void workassinger() => print("singer");
  // void perform() => workassinger();
  // void perform() => super.perform();
}

class Celebrety extends Performer with Dancer, Actor, Singer {}

void main() {
  Celebrety celebrety = Celebrety();
  celebrety.perform();
}
