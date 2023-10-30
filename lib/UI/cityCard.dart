import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String CityName;
  final String Count;

  const CityCard({super.key, required this.CityName, required this.Count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            child: Text(
          CityName,
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
        )),
        Container(
            child: Text(
          Count,
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
        )),
      ]),
    );
  }
}
