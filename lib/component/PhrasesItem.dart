import 'package:flutter/material.dart';
import 'package:lang_app/component/itemInfo.dart';
import 'package:lang_app/model/numbers_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.number, required this.color})
      : super(key: key);

  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(number:number),
    );
  }
}
