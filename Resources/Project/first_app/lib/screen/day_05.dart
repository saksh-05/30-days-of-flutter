// stateless widget
// import 'dart:math';

// import 'package:flutter/material.dart';

// class Day05 extends StatelessWidget {
//   // const ({ Key? key }) : super(key: key);
//   // const string side = "Left";
//   Random rnd = Random();
//   List<String> col = [
//     "#053ca4",
//     "#059112",
//     "#05afb0",
//     "#a505b0",
//     "#e92f75",
//     "#f11d26",
//     "#f7a03d"
//   ];
//   var clr = Color(int.parse("0xfffff"));
//   void changeBackground() {
//     String val = col[rnd.nextInt(7)].replaceAll("#", "0xff");
//     clr = Color(int.parse(val));
//     print(col[rnd.nextInt(7)]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Day05"),
//         backgroundColor: const Color.fromARGB(255, 3, 80, 118),
//       ),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 3, 80, 118),
//               ),
//               margin: EdgeInsets.zero,
//               padding: EdgeInsets.zero,
//               child: Center(
//                 child: Text(
//                   "Day 05 Drawer",
//                   textScaleFactor: 1.5,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: MediaQuery.removePadding(
//                 context: context,
//                 removeTop: true,
//                 child: ListView.separated(
//                   itemCount: 31,
//                   itemBuilder: (context, index) {
//                     return index != 0
//                         ? ListTile(
//                             title: Text(
//                                 index + 1 < 10 ? 'Day-0$index' : 'Day-$index'),
//                             tileColor: Colors.amberAccent[700],
//                             textColor: Colors.white,
//                             onTap: () {
//                               Navigator.pushNamed(
//                                   context,
//                                   index + 1 < 10
//                                       ? '/day0$index'
//                                       : '/day$index');
//                             },
//                           )
//                         : ListTile(
//                             title: const Text("Home"),
//                             subtitle: const Text('Go to home screen'),
//                             tileColor: Colors.amberAccent[700],
//                             textColor: Colors.white,
//                             onTap: () {
//                               Navigator.pushNamed(context, "/");
//                             },
//                           );
//                   },
//                   separatorBuilder: (context, index) => const Divider(
//                     thickness: 2,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(color: clr),
//         child: Center(
//           child: ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//               foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
//             ),
//             child: const Text("Press to change background"),
//             onPressed: changeBackground,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/material.dart';

class Day05 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day05State();
  }
}

class Day05State extends State<Day05> {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";
  Random rnd = Random();
  List<String> col = [
    "#053ca4",
    "#059112",
    "#05afb0",
    "#a505b0",
    "#e92f75",
    "#f11d26",
    "#f7a03d"
  ];
  var clr = Color(int.parse("0xfffff"));
  void changeBackground() {
    setState(() {
      String val = col[rnd.nextInt(7)].replaceAll("#", "0xff");
      clr = Color(int.parse(val));
      print(col[rnd.nextInt(7)]);
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
                  "Day 05 Drawer",
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
                                index + 1 < 10 ? 'Day-0$index' : 'Day-$index'),
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
      body: Container(
        decoration: BoxDecoration(color: clr),
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: const Text("Press to change background"),
            onPressed: changeBackground,
          ),
        ),
      ),
    );
  }
}
