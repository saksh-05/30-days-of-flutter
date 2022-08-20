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
                                  index < 10 ? 'Day-0$index' : 'Day-$index'),
                              tileColor: Colors.amberAccent[700],
                              textColor: Colors.white,
                              onTap: () {
                                Navigator.pushNamed(context,
                                    index < 10 ? '/day0$index' : '/day$index');
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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text("Sliver App Bar"),
                background: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1505322022379-7c3353ee6291?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                )
              ],
              backgroundColor: const Color.fromARGB(255, 3, 80, 118),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    height: 50,
                    color: index.isEven ? Colors.green : Colors.greenAccent,
                    child: Text('${index + 1}'),
                  );
                },
                childCount: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  color: Colors.amber,
                  height: 40,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text("Sliver Grid count")),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black12,
                ),
                Container(
                  color: Colors.black26,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.blueAccent,
                ),
                Container(
                  color: Colors.blueGrey,
                ),
              ],
            )
          ],
        ));
  }
}
