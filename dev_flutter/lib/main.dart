import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:first_app/screen/day_01.dart';
import 'package:first_app/screen/day_02.dart';
import 'package:first_app/screen/day_03.dart';
import 'package:first_app/screen/day_04.dart';
import 'package:first_app/screen/day_05.dart';
import 'package:first_app/screen/day_06.dart';
import 'package:first_app/screen/day_07.dart';
import 'package:first_app/screen/day_08.dart';
import 'package:first_app/screen/day_09.dart';
import 'package:first_app/screen/day_10.dart';
import 'package:first_app/screen/day_11.dart';
import 'package:first_app/screen/day_12.dart';
import 'package:first_app/screen/day_13.dart';
import 'package:first_app/screen/day_14.dart';
import 'package:first_app/screen/day_15.dart';
import 'package:first_app/screen/day_16.dart';
import 'package:first_app/screen/day_17.dart';
import 'package:first_app/screen/day_18.dart';
import 'package:first_app/screen/day_19.dart';
import 'package:first_app/screen/day_20.dart';
import 'package:first_app/screen/day_21.dart';
import 'package:first_app/screen/day_22.dart';
import 'package:first_app/screen/day_23.dart';
import 'package:first_app/screen/day_24.dart';
import 'package:first_app/screen/day_25.dart';
import 'package:first_app/screen/day_26.dart';
import 'package:first_app/screen/day_27.dart';
import 'package:first_app/screen/day_28.dart';
import 'package:first_app/screen/day_29.dart';
import 'package:first_app/screen/day_30.dart';

void main() {
  runApp(MyApp());
}

//for routing
// https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int _count = 0;
  var route = {
    "/day01": Day01(),
    "/day02": Day02(),
    "/day03": Day03(),
    "/day04": Day04(),
    "/day05": Day05(),
    "/day06": Day06(),
    "/day07": Day07(),
    "/day08": Day08(),
    "/day09": Day09(),
    "/day10": Day10(),
    "/day11": Day11(),
    "/day12": Day12(),
    "/day13": Day13(),
    "/day14": Day14(),
    "/day15": Day15(),
    "/day16": Day16(),
    "/day17": Day17(),
    "/day18": Day18(),
    "/day19": Day19(),
    "/day20": Day20(),
    "/day21": Day21(),
    "/day22": Day22(),
    "/day23": Day23(),
    "/day24": Day24(),
    "/day25": Day25(),
    "/day26": Day26(),
    "/day27": Day27(),
    "/day28": Day28(),
    "/day29": Day29(),
    "/day30": Day30(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Firebase App",
      // theme: ThemeData(
      //   primarySwatch: Colors.blueGrey,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: Colors.blueAccent,
      //     secondary: Colors.blueAccent,
      //   ),
      //   buttonTheme: ButtonTheme.of(context).copyWith(
      //     buttonColor: Colors.amberAccent,
      //     textTheme: ButtonTextTheme.primary,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // ),
      onGenerateRoute: (settings) {
        String val = settings.name as String;
        log(val);
        return MaterialPageRoute(builder: (_) => route[val] as Widget);
      },
      home: Newhome(),
    );
  }
}

class Newhome extends StatelessWidget {
  // const newHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text("30 Day Flutter"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,
                    index + 1 < 10 ? '/day0${index + 1}' : '/day{index+1}');
              },
              child: Card(
                color: const Color.fromARGB(255, 10, 196, 22),
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: Center(
                      child: Text(
                    index + 1 < 10 ? "Day-0${index + 1}" : "Day-${index + 1}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            );
          }
          // children: [
          //   InkWell(
          //     onTap: () {
          //       Navigator.pushNamed(context, '/day01');
          //     },
          //     child: const Card(
          //       color: Color.fromARGB(255, 10, 196, 22),
          //       child: SizedBox(
          //         width: 300,
          //         height: 60,
          //         child: Center(
          //           child: Text(
          //             "Day-01",
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          //   InkWell(
          //     onTap: () {
          //       Navigator.pushNamed(context, '/day02');
          //     },
          //     child: const Card(
          //       color: Color.fromARGB(255, 10, 196, 22),
          //       child: SizedBox(
          //         width: 300,
          //         height: 60,
          //         child: Center(
          //           child: Text(
          //             "Day-02",
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          //   InkWell(
          //     onTap: () {
          //       Navigator.pushNamed(context, '/day03');
          //     },
          //     child: const Card(
          //       color: Color.fromARGB(255, 10, 196, 22),
          //       child: SizedBox(
          //         width: 300,
          //         height: 60,
          //         child: Center(
          //           child: Text(
          //             "Day-03",
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ],
          ),
    );
  }
}
