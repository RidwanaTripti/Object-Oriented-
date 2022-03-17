abstract class Validation<T> {
  final T info;
  Validation(
      {required this.info,
      required bool Function(T)
          validation}) //if we use 'required' then don't need to use '?/null safety'
  {
    {
      if (!validation(info))
        throw Exception("This is not valid for this system");
    }
  }
}

class FirstName extends Validation {
  FirstName({required name})
      : super(info: name, validation: (FirstName) => FirstName.length > 2);
}

class Age extends Validation {
  Age({required age}) : super(info: age, validation: (Age) => Age >= 18);
}

class Nationality extends Validation {
  Nationality({required nationality})
      : super(
            info: nationality,
            validation: (Nationality) => Nationality == "Bangladeshi");
}

void main(List<String> args) {
  try {
    // FirstName(name: "TRi");
    // Age(age: 18);
    Nationality(nationality: "Bangladeshi");
  } catch (e) {
    print(e);
  }
}
