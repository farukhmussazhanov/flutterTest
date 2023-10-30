import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/cityCard.dart';

class cityList extends StatelessWidget {
  const cityList({super.key});

  @override
  Widget build(BuildContext context) {
    List clinics = [
      ["Алматы", "6 клиник"],
      ["Астана", "3 клиники"],
      ["Атырау", "6 клиник"],
      ["Актобе", "1 клиника"],
      ["Актау", "2 клиники"],
      ["Аксай", "3 клиники"],
      ["Кызылорда", "2 клиники"],
      ["Шымкент", "1 клиника"],
      ["Уральск", "2 клиники"],
      ["Кульсары", "2 клиники"],
      ["Тенгиз", "1 клиника"],
      ["Баутино", "1 клиника"],
    ];
    return Container(
      // color: Colors.blue,
      child: ListView.builder(
        itemCount: clinics.length,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        itemBuilder: (context, index) {
          return CityCard(
              CityName: clinics[index][0], Count: clinics[index][1]);
        },
      ),
    );
  }
}
