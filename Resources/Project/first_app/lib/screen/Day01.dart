import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Day01 extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const IconButton(
        //   onPressed: null,
        //   icon: Icon(Icons.menu),
        // ),
        title: const Text("Day01"),
        backgroundColor: Color.fromARGB(255, 3, 80, 118),

        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.search),
        //     tooltip: 'Search',
        //   )
        // ],
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
      body: const Center(
        child: Text(
          'Day-01',
          textScaleFactor: 4,
        ),
      ),
    );
  }
}
