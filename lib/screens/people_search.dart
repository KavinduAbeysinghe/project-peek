import 'package:flutter/material.dart';
import '../customWidgets/person_card.dart';
import "../sampleData/persons.dart";
import 'person_view_screen.dart';

class PeopleSearch extends StatefulWidget {
  const PeopleSearch({super.key});

  @override
  State<PeopleSearch> createState() => _PeopleSearchState();
}

class _PeopleSearchState extends State<PeopleSearch> {
  List<Person> filteredPeople = people;

  void handleSearchPerson(String searchTerm) {
    setState(() {
      filteredPeople = people
          .where((person) =>
              person.name.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    void navigateViewPerson(int id) {
      Person person = people.where((d) => d.id == id).first;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PersonView(
                    person: person,
                  )));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: const InputDecoration(
                labelText: "Search by Name of the person",
                hintText: "Eg: Adam",
                prefixIcon: Icon(Icons.search_rounded)),
            onChanged: (value) => handleSearchPerson(value),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Chip(
              label: Text("${filteredPeople.length} Search Results"),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: filteredPeople.length,
            itemBuilder: (BuildContext context, int index) {
              var person = filteredPeople[index];
              return PersonCard(
                onTap: () => navigateViewPerson(person.id),
                name: person.name,
                location: person.location,
                age: person.age,
                image: person.image,
                description: person.description,
              );
            },
          ))
        ],
      ),
    );
  }
}
