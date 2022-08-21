import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day10State();
  }
}

class Day10State extends State<Day10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 10 Animation"),
        backgroundColor: const Color.fromARGB(255, 3, 80, 118),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
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
                  "Day 10 Drawer",
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
                            title:
                                Text(index < 10 ? 'Day-0$index' : 'Day-$index'),
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
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://images.unsplash.com/photo-1505322022379-7c3353ee6291?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                "Flutter Animation",
                textScaleFactor: 1.5,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 64,
                onPressed: () {},
                icon: const Icon(Icons.flutter_dash),
              ),
              IconButton(
                iconSize: 64,
                onPressed: () {},
                icon: const Icon(Icons.flutter_dash),
              ),
              IconButton(
                iconSize: 64,
                onPressed: () {},
                icon: const Icon(Icons.flutter_dash),
              ),
            ],
          ),
          Container(
            child: const Text(
              "Animation in flutter can be done in ",
              textAlign: TextAlign.center,
            ),
            padding: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
