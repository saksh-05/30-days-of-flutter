import 'package:flutter/material.dart';

class Day14 extends StatefulWidget {
  @override
  State<Day14> createState() => _Day14State();
}

class _Day14State extends State<Day14> {
  // const ({ Key? key }) : super(key: key);
  TextEditingController _nameController = new TextEditingController();
  bool _heart = false;
  bool _volume = false;
  bool _file = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day14"),
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
                  "Day 14 Drawer",
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
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Gesture Detector",
                textScaleFactor: 1.5,
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  mainAxisExtent: 64,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: GestureDetector(
                      child: _volume
                          ? const Icon(
                              Icons.volume_up,
                              size: 64,
                            )
                          : const Icon(
                              Icons.volume_off,
                              size: 64,
                            ),
                      onTap: () {
                        setState(() {
                          _volume = !_volume;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    child: _heart
                        ? const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.amberAccent,
                            size: 64,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 64,
                          ),
                    onDoubleTap: () {
                      setState(() {
                        _heart = !_heart;
                      });
                    },
                  ),
                  GestureDetector(
                    child: _file
                        ? const Icon(
                            Icons.file_upload,
                            color: Colors.grey,
                            size: 64,
                          )
                        : const Icon(
                            Icons.file_download,
                            color: Colors.red,
                            size: 64,
                          ),
                    onLongPress: () {
                      setState(() {
                        _file = !_file;
                      });
                    },
                  ),
                  GestureDetector(
                    child: _heart
                        ? const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.amberAccent,
                            size: 64,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 64,
                          ),
                    onDoubleTap: () {
                      setState(() {
                        _heart = !_heart;
                      });
                    },
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
