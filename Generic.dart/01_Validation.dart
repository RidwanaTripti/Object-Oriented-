abstract class Validation<T> {
  final T data;
  Validation({required this.data, bool Function(T)? validator}) {
    if (validator != null) {
      if (!validator(data))
        throw Exception(
            'you are not bangladeshi. your nationality is ${data} ');
    }
  }
}

class IsBangladeshi extends Validation {
  IsBangladeshi({required nation})
      : super(data: nation, validator: (n) => n == "bangladeshi");
}

void main(List<String> args) {
  try {
    IsBangladeshi(nation: "bangladeshi");
  } catch (e) {
    print(e);
  }
}
