
import 'package:flutter/material.dart';

class Day08 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day08State();
  }
}


class Day08State extends State<Day08> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day08"),
        backgroundColor: const Color.fromARGB(255, 3, 80, 118),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 80, 118),
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Center(
                child: Text(
                  "Day 08 Drawer",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.separated(
                  itemCount: 31,
                  itemBuilder: (context, index) {
                    return index != 0
                        ? ListTile(
                            title: Text(
                                index  < 10 ? 'Day-0$index' : 'Day-$index'),
                            tileColor: Colors.amberAccent[700],
                            textColor: Colors.white,
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  index < 10
                                      ? '/day0$index'
                                      : '/day$index');
                            },
                          )
                        : ListTile(
                            title: const Text("Home"),
                            subtitle: const Text('Go to home screen'),
                            tileColor: Colors.amberAccent[700],
                            textColor: Colors.white,
                            onTap: () {
                              Navigator.pushNamed(context, "/");
                            },
                          );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Day 08 more slivers"),
      ),
    );
  }
}
