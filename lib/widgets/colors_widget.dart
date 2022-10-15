import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';

class ColorsWidget extends StatefulWidget {
  const ColorsWidget({Key? key}) : super(key: key);

  @override
  State<ColorsWidget> createState() => _ColorsWidgetState();
}

class _ColorsWidgetState extends State<ColorsWidget> {
  final _colors = [
    Colors.orange,
    Colors.blue,
    Colors.black,
    Colors.pink,
    Colors.lightBlueAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) => Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.only(right: 20, left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _colors[index],
              boxShadow: [
                BoxShadow(
                    color: _colors[index].withOpacity(0.2), spreadRadius: 5)
              ]),
          child: Icon(
            index == 0 ? Icons.check : null,
            size: 15,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
