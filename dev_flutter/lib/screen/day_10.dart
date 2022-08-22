import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day10State();
  }
}

class Day10State extends State<Day10> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final clickedTransform = Matrix4.identity()..scale(2.5);
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
                print(isClicked);
              });
            },
            child: Container(
              color: Colors.red,
              // alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(10),
              height: isClicked ? 40 : 80,
              width: isClicked ? 40 : 80,
              // transform: isClicked ? clickedTransform : Matrix4.identity(),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow, Colors.blue],
                  ),
                ),
                transform: isClicked ? clickedTransform : Matrix4.identity(),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     setState(() {
          //       isClicked = !isClicked;
          //       print(isClicked);
          //     });
          //   },
          //   child: Container(
          //     color: Color.fromARGB(255, 61, 211, 81),
          //     alignment: Alignment.center,
          //     padding: const EdgeInsets.all(10),
          //     height: 100,
          //     child: AnimatedContainer(
          //       color: Color.fromARGB(255, 70, 190, 250),
          //       duration: const Duration(seconds: 1),
          //       height: 60,
          //       width: 60,
          //       transform: isClicked ? clickedTransform : Matrix4.identity(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
