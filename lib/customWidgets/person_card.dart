import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final void Function() onTap;
  final String name;
  final String image;
  final int age;
  final String location;
  final String description;

  const PersonCard(
      {super.key,
      required this.onTap,
      required this.name,
      required this.image,
      required this.age,
      required this.description,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 10.0,
                            color: Colors.blueGrey,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text("Age: ${age.toString()}")
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        size: 20.0,
                        color: Colors.orangeAccent,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(location)
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(description)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
