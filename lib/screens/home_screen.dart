import 'package:flutter/material.dart';
import 'package:project_peek_you/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateSearchScreen() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SearchScreen()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Peek You"),
        backgroundColor: const Color(0xFFFFC800),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FAST",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "PEOPLE SEARCH",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF637C83)),
                          ),
                          Text(
                            "MADE EASY",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/welcome.png",
                      ),
                    )
                  ],
                ),
                const Text(
                  "Find friends, relatives and colleagues across globe",
                )
              ],
            ),
          ),
          Image.asset("assets/images/bg_image.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Text(
                  "What is Peek You?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: navigateSearchScreen,
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.black),
                  ),
                  child: const Text(
                    "Get Started Now!",
                    style: TextStyle(color: Color(0xFFFFC800)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
