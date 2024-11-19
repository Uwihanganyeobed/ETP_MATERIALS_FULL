void main() {
  //
  print('hello world');
  // variables
  int a = 10, b = 20;
  print(a + b);

  //strings
  String name = 'John';
  print(name);

  //booleans
  bool isTrue = true;

  print(!isTrue);

  List<int> numbers = [1, 2, 3, 4, 5, 12];
  print(numbers);

  // print(numbers);

  void add() {
    int a = 10, b = 20;
    print(a + b);
  }

  add();

  void subtract() {
    int a = 20, b = 10;
    print(a - b);
  }

  subtract();

  // map
  var myMap = {};
  myMap['name'] = 'John';
  myMap['age'] = 20;
  myMap['city'] = 'New York';
  print(myMap.length);

  // classes
  Students s1 = Students('Obed', 12, 'Biryogo', true);
  Teacher t1 = Teacher('John', 20, 'New York', true, 'Math');
  s1.display();
  t1.display();
}

// OOP classes
class Students {
  String name;
  int age;
  String city;
  bool isPromoted;

  Students(this.name, this.age, this.city, this.isPromoted);

  void display() {
    print('Name: $name');
    print('Age: $age');
    print('City: $city');
    print('Is Promoted: $isPromoted');
  }
  
}

 
class Teacher extends Students {
  String subject;

  Teacher(String name, int age, String city, bool isPromoted, this.subject)
      : super(name, age, city, isPromoted);

  @override
  void display() {
    print('Subject: $subject');
    
  }
}
