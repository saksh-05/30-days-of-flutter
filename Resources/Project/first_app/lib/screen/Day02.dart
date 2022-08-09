import 'dart:ui';

import 'package:flutter/material.dart';

class Day02 extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day02"),
        backgroundColor: const Color.fromARGB(255, 3, 80, 118),
      ),
      body: const Center(
        child: Text(
          'Day-01',
          textScaleFactor: 4,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 150.0,
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 80, 118),
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Center(
                  child: Text(
                    "Day 02 Drawer",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("Home"),
                    tileColor: Colors.amberAccent[700],
                    subtitle: const Text("Go to home screen"),
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day-01"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day01");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day02"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day02");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day03"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day03");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day04"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day04");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day05"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day05");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day06"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day06");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day07"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day07");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day08"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day08");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day09"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day09");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day10"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day10");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day11"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day11");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day12"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day12");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day13"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day13");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day14"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day14");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day15"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day15");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day16"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day16");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day17"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day17");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day18"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day18");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day19"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day19");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day20"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day20");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day21"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day21");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day22"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day22");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day23"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day23");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day24"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day24");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day25"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day25");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day26"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day26");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day27"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day27");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day28"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day28");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day29"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day29");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day30"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day30");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: const Text("Day02"),
                    tileColor: Colors.amberAccent[700],
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "/day02");
                    },
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
