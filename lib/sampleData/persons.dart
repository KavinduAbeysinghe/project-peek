class Person {
  final int id;
  final String name;
  final int age;
  final String gender;
  final String occupation;
  final String location;
  final String description;
  final String image;

  Person({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    required this.occupation,
    required this.location,
    required this.description,
    required this.image,
  });
}

final List<Person> people = [
  Person(
    id: 1,
    name: 'John Doe',
    age: 30,
    gender: "Male",
    occupation: "Student",
    location: 'New York',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 2,
    name: 'Jane Smith',
    age: 25,
    gender: "Female",
    occupation: "Student",
    location: 'Los Angeles',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 3,
    name: 'Alice Johnson',
    age: 35,
    gender: "Female",
    occupation: "Student",
    location: 'Chicago',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 4,
    name: 'Michael Brown',
    age: 40,
    gender: "Male",
    occupation: "Student",
    location: 'Houston',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 5,
    name: 'Emily Wilson',
    gender: "Female",
    occupation: "Student",
    age: 28,
    location: 'Miami',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 6,
    name: 'David Miller',
    age: 45,
    gender: "Male",
    occupation: "Student",
    location: 'Dallas',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 7,
    name: 'Olivia Taylor',
    age: 32,
    gender: "Female",
    occupation: "Student",
    location: 'Seattle',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 8,
    name: 'Daniel White',
    age: 38,
    gender: "Male",
    occupation: "Student",
    location: 'San Francisco',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 9,
    name: 'Sophia Clark',
    age: 27,
    gender: "Female",
    occupation: "Student",
    location: 'Atlanta',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
  Person(
    id: 10,
    name: 'Ethan Harris',
    age: 33,
    gender: "Male",
    occupation: "Student",
    location: 'Boston',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/person1.jpg',
  ),
];

