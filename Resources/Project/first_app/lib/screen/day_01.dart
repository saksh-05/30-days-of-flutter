import 'package:flutter/material.dart';

class Day01 extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day01"),
        backgroundColor: const Color.fromARGB(255, 3, 80, 118),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 80, 118),
              ),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Center(
                child: Text(
                  "Day 01 Drawer",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              tileColor: Colors.amberAccent[700],
              subtitle: const Text("Go to home screen"),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            ListTile(
              title: const Text("Day02"),
              tileColor: Colors.amberAccent[700],
              onTap: () {
                Navigator.pushNamed(context, "/day02");
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // height: 100,
        // width: double.infinity,
        child: Column(
          children: const [
            Text(
              'Day-01',
              textScaleFactor: 2,
            ),
            Text(
              'Day-01',
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
    );
  }
}
