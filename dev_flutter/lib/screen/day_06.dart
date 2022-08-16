import 'package:flutter/material.dart';

class Day06 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day06State();
  }
}

class Day06State extends State<Day06> {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";
  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Day05"),
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
                    "Day 06 Drawer",
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
                              title: Text(index + 1 < 10
                                  ? 'Day-0$index'
                                  : 'Day-$index'),
                              tileColor: Colors.amberAccent[700],
                              textColor: Colors.white,
                              onTap: () {
                                Navigator.pushNamed(
                                    context,
                                    index + 1 < 10
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Page View',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ListView',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Grid View',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Sliver List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Sliver Grid',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 3, 80, 118),
          onTap: _onItemTapped,
        ),
        body: const Text("Flutter layouts: Listview, Gridview, Slivers"));
  }
}
