// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/auth/login.dart';
import 'package:flutter_application_2/pages/cityList.dart';
import 'package:flutter_application_2/pages/page2.dart';
import '../UI/cityCard.dart';

void main() {
  runApp(const MyApp());
}

final List _tabs = [cityList(), login()];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: Image(
            image: NetworkImage(
                'https://app.interteach.kz/img/core-img/i-logo.png'),
            fit: BoxFit.contain,
            width: 200,
          ),
          // title: Text(
          //   "INTERTEACH",
          //   style: TextStyle(
          //     color: Colors.red,
          //   ),
          // ),
          backgroundColor: Colors.white,
          actions: [
            Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => page2(),
                        ),
                      );
                    },
                    icon: Icon(Icons.notifications, color: Colors.red))),
          ],
        ),
        body: _tabs[1],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              print(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.maps_home_work_outlined), label: "Клиники"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "ЛК",
              ),
            ]),
      ),
    );
  }
}
