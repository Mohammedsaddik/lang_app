import 'package:flutter/material.dart';
import 'package:lang_app/component/itemInfo.dart';
import 'package:lang_app/model/numbers_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(children: [
        Container(
            color: const Color(0xffFFF6DC), child: Image.asset(number.Image!)),
        Expanded(child: ItemInfo(number: number)),
      ]),
    );
  }
}
