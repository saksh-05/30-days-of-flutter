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
          appBar: AppBar(
            leading: const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
            ),
            title: const Text("App"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                tooltip: 'Search',
              )
            ],
          ),
          body: Center(
            child: Text('$_count'),
          ),
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
