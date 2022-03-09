class Animal {
  String Name = "";

  Animal(String n) {
    Name = n;
  }

  void WhoIAm() {
    print("Animal");
  }
}

void main(List<String> args) {
  var animal = Animal("bird");
  print(animal.Name);
  animal.WhoIAm();
}
