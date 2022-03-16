class Animal {
  String Name = "";

  Animal(String Name) {
    this.Name = Name;
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
