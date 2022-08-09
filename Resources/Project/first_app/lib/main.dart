import 'package:flutter/material.dart';
import 'package:first_app/screen/Day01.dart';
import 'package:first_app/screen/Day02.dart';

void main() {
  runApp(MyApp());
}

//for routing
// https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade
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
      // theme: ThemeData(
      //   primarySwatch: Colors.blueGrey,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: Colors.blueAccent,
      //     secondary: Colors.blueAccent,
      //   ),
      //   buttonTheme: ButtonTheme.of(context).copyWith(
      //     buttonColor: Colors.amberAccent,
      //     textTheme: ButtonTextTheme.primary,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // ),
      routes: {
        // '/': ((context) => MyApp()),
        '/day01': (context) => Day01(),
        '/day02': (context) => Day02(),
      },
      home: newHome(),
    );
  }
}

class newHome extends StatelessWidget {
  // const newHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text("30 Day Flutter"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/day01');
            },
            child: const Card(
              color: Color.fromARGB(255, 10, 196, 22),
              child: SizedBox(
                width: 300,
                height: 60,
                child: Center(
                  child: Text(
                    "Day-01",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/day02');
            },
            child: const Card(
              color: Color.fromARGB(255, 10, 196, 22),
              child: SizedBox(
                width: 300,
                height: 60,
                child: Center(
                  child: Text(
                    "Day-02",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
