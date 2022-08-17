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

  List<Widget> body = const [
    PageViewWidget(),
    ListViewWidget(),
    GridViewWidget(),
    SliverListWidget(),
    SliverGridWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day06"),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page_sharp),
            label: 'Page View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'List View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4),
            label: 'Grid View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Sliver List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4_outlined),
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
      body: body[_selectedIndex],
    );
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 1,
    );
    return PageView(
      controller: controller,
      // scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              "Page 1",
              textScaleFactor: 3,
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 72, 5, 154),
          child: const Center(
            child: Text(
              "Page 2",
              textScaleFactor: 3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.cyanAccent,
          child: const Center(
            child: Text(
              "Page 3",
              textScaleFactor: 3,
            ),
          ),
        ),
      ],
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(
          title: Center(
            child: Text(
              '$index',
              textScaleFactor: 2,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          tileColor: const Color.fromARGB(255, 129, 129, 215),
        );
      },
      separatorBuilder: (context, index) => const Divider(
        height: 1,
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 16,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.amber,
          child: Center(
            child: Text(
              "$index",
              textScaleFactor: 3,
            ),
          ),
        );
      },
    );
  }
}

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              children: [
                ListTile(
                  tileColor: Colors.blueAccent,
                  title: Text('$index'),
                ),
                const Divider(
                  height: 1,
                )
              ],
            );
          },
          childCount: 15,
        ),
      ),
    ]);
  }
}

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    '$index',
                    textScaleFactor: 3,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            childCount: 16,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: 150,
          ),
        ),
      ],
    );
  }
}
