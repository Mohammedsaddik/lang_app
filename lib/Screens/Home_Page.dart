import 'package:flutter/material.dart';
import 'package:lang_app/Screens/Numbers_Page.dart';
import 'package:lang_app/Screens/familypage.dart';
import 'package:lang_app/Screens/phrases_page.dart';
import 'package:lang_app/component/categort.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.language,
              color: Colors.black,
              size: 40.0,
            ),
          ),
        ],
        title: const Text(
          'Toku',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const NumpersPage();
            }));
          },
          text: 'Numbers',
          color: Colors.orange,
        ),
        const SizedBox(
          height: 50,
        ),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const FamilyPage();
            }));
          },
          text: 'Family Members',
          color: Colors.green,
        ),
        const SizedBox(
          height: 50,
        ),
        Category(
          text: 'Colors',
          color: Colors.purple,
        ),
        const SizedBox(
          height: 50,
        ),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const PhrasesPage();
            }));
          },
          text: 'Phrases',
          color: Colors.blue,
        ),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
