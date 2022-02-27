import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Firebase App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blueAccent,
          secondary: Colors.blueAccent,
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.amberAccent,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      home: Scaffold(
          // appBar: AppBar(
          //   leading: const IconButton(
          //     onPressed: null,
          //     icon: Icon(Icons.menu),
          //   ),
          //   title: const Text("App"),
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.search),
          //       tooltip: 'Search',
          //     )
          //   ],
          // ),
          drawer: Drawer(
            child: ListView(
              children: [
                Container(
                  height: 70,
                  padding: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(color: Colors.blue),
                  alignment: const Alignment(0.0, 0.0),
                  child: const DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Drawer Header',
                      style: TextStyle(
                        color: Color.fromARGB(255, 247, 246, 252),
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    // Navigator.of(context).pushNamed()
                  },
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  'Checking scrollview',
                  textScaleFactor: 10,
                ),
                Text(
                  'using column widget',
                  textScaleFactor: 10,
                ),
              ],
            ),
          ),
          //  CustomScrollView(
          //   slivers: [
          //     const SliverPadding(
          //       padding: EdgeInsets.symmetric(
          //         vertical: 0,
          //         horizontal: 10,
          //       ),
          //     ), //horizontal padding is not visible while vertical
          //     //padding app padding around sliver app bar
          //     const SliverAppBar(
          //       pinned: true,
          //       snap: false,
          //       floating: true,
          //       expandedHeight: 160.0,
          //       flexibleSpace: FlexibleSpaceBar(
          //         title: Text('App Bar'),
          //       ),
          //     ),
          //     SliverGrid(
          //       delegate: SliverChildBuilderDelegate(
          //         (context, index) {
          //           return Container(
          //             alignment: Alignment.center,
          //             color: index.isEven ? Colors.orangeAccent : Colors.amber,
          //             child: Text('Grid $index'),
          //           );
          //         },
          //         childCount: 10,
          //       ),
          //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 300,
          //         mainAxisSpacing: 10,
          //         crossAxisSpacing: 10,
          //         childAspectRatio: 4,
          //       ),
          //     ),
          //     SliverList(
          //         delegate: SliverChildBuilderDelegate(
          //             (BuildContext context, int index) {
          //       return Container(
          //           color: index.isEven ? Colors.white : Colors.black12,
          //           height: 100,
          //           child: Center(
          //             child: Text(
          //               '$index',
          //               textScaleFactor: 5,
          //             ),
          //           ));
          //     }, childCount: 10))
          //   ],
          // ),
          bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(
                height: 50,
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() {
              _count++;
            }),
            tooltip: "Increament Counter",
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked),
    );
  }
}
