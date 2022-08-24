import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day10State();
  }
}

class Day10State extends State<Day10> {
  bool firstClicked = false;
  bool secondClicked = false;
  bool thirdClicked = false;
  @override
  Widget build(BuildContext context) {
    final clickedTransform = Transform.translate(
      offset: Offset(10.0, 10.0),
      
    );

    // ..translate(20, 20);
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 1,
              )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      firstClicked = !firstClicked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellow, Colors.blue],
                      ),
                    ),
                    transform:
                        firstClicked ? clickedTransform : Matrix4.identity(),
                    child: const Center(
                      child: Text(
                        "One",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      secondClicked = !secondClicked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellow, Colors.blue],
                      ),
                    ),
                    transform:
                        secondClicked ? clickedTransform : Matrix4.identity(),
                    child: const Center(
                      child: Text(
                        "One",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      thirdClicked = !thirdClicked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellow, Colors.blue],
                      ),
                    ),
                    transform:
                        thirdClicked ? clickedTransform : Matrix4.identity(),
                    child: const Center(
                      child: Text(
                        "One",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),

              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       isClicked = !isClicked;
              //       print(isClicked);
              //     });
              //   },
              //   child: Container(
              //     color: Colors.red,
              //     padding: const EdgeInsets.all(10),
              //     child: AnimatedContainer(
              //       duration: const Duration(seconds: 1),
              //       height: 60,
              //       width: 60,
              //       decoration: const BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: [Colors.orange, Colors.yellow, Colors.blue],
              //         ),
              //       ),
              //       transform: isClicked ? clickedTransform : Matrix4.identity(),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
