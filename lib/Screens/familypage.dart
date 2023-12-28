import 'package:flutter/material.dart';
import 'package:lang_app/component/item.dart';
import 'package:lang_app/model/numbers_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Number> numbers = const [
    Number(
      sound: 'sounds/family_members/father.wav',
      jpName: 'chich',
      enName: 'father',
      Image: 'assets/images/family_members/family_father.png',
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      Image: 'assets/images/numbers/number_two.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'San',
      enName: 'three',
      Image: 'assets/images/numbers/number_three.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      Image: 'assets/images/numbers/number_four.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      Image: 'assets/images/numbers/number_five.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      Image: 'assets/images/numbers/number_six.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      Image: 'assets/images/numbers/number_seven.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      Image: 'assets/images/numbers/number_eight.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      Image: 'assets/images/numbers/number_nine.png',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      Image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.family_restroom,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ],
          title: const Text(
            'Family Members',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.separated(
          itemCount: numbers.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10), // Adjust the height as needed
          itemBuilder: (BuildContext context, int index) {
            return Item(
              number: numbers[index],
              color: Colors.green,
            );
          },
        ));
  }
}
