import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "../sampleData/persons.dart";

class PersonView extends StatelessWidget {
  final Person person;

  const PersonView({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Person"),
        backgroundColor: const Color(0xFFFFC800),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(person.image),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  person.name,
                                  style: const TextStyle(fontSize: 30.0),
                                ),
                                Text(
                                    "Gender: ${person.gender} | Age: ${person.age.toString()}"),
                                Text("Currently Lives In: ${person.location}"),
                                Text("Occupation: ${person.occupation}")
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(person.description)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.people),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "Social Links",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Wrap(
                          spacing: 10.0,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.facebookF,
                                  color: Color(0xFFFFC800)),
                              label: const Text(
                                "Facebook",
                                style: TextStyle(color: Color(0xFFFFC800)),
                              ),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.twitter,
                                  color: Color(0xFFFFC800)),
                              label: const Text(
                                "Twitter",
                                style: TextStyle(color: Color(0xFFFFC800)),
                              ),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.snapchat,
                                  color: Color(0xFFFFC800)),
                              label: const Text(
                                "Snapchat",
                                style: TextStyle(color: Color(0xFFFFC800)),
                              ),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.instagram,
                                  color: Color(0xFFFFC800)),
                              label: const Text(
                                "Instagram",
                                style: TextStyle(color: Color(0xFFFFC800)),
                              ),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.whatsapp,
                                  color: Color(0xFFFFC800)),
                              label: const Text(
                                "Whatsapp",
                                style: TextStyle(color: Color(0xFFFFC800)),
                              ),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            )
                          ],
                        )
                        // Divider()
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Criminal Records",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Criminal Record 1",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward,
                                  color: Color(0xFFFFC800)),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Criminal Record 1",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward,
                                  color: Color(0xFFFFC800)),
                              style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black)),
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Criminal Record 1",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward,
                                  color: Color(0xFFFFC800)),
                              style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black)),
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Criminal Record 1",
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward,
                                  color: Color(0xFFFFC800)),
                              style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
