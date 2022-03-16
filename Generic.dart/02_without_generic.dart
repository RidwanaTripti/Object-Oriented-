/* information that i used--
1.Name
2.Age
3.Height
4.True/false
*/

class Name {
  final String firstName;
  Name(this.firstName) {
    if (firstName.length < 3)
      throw Exception(
          'The given name is not valid becuase of its lenght in under three letters');
  }
}

class Age {
  final int age;
  Age(this.age) {
    if (age < 18) throw Exception('You are under aged so u can\'t take entry');
  }
}

class Height {
  final double height;
  Height(this.height) {
    if (height < 5.00) throw Exception('Your height is under 5 feet');
  }
}

class Nationality {
  final String nationality;
  Nationality(this.nationality) {
    if (nationality != "Bangladeshi")
      throw Exception('You are not bangladeshi.');
  }
}

void main(List<String> args) {
  try {
    Name("Ray");
  } catch (e) {
    print(e);
  }
}
