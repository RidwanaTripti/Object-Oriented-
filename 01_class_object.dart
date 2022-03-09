class A {
  int? a;
  int b = 10;
  final int c = 12;
  late int d;
}

void main(List<String> args) {
  var b = A();
  print(b.a);
  print(b.b);
  print(b.c);
  b.d = 4;
  print(b.d);
}
