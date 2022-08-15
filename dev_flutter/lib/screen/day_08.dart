import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Day08 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day08State();
  }
}

// Future<Breed> fetchBreed() async {
//   final response =
//       await http.get(Uri.parse('https://dog.ceo/api/breeds/list/all'));
//   if (response.statusCode == 200) {
//     // log(response.body[0]);
//     Map<String, dynamic> val = json.decode(response.body);
//     // log(val['message']);
//     print(val['message'][0]);
//     return Breed.fromJson(val);
//   } else {
//     throw Exception("Breed fetching erorr");
//   }
// }

// class Breed {
//   final String name;

//   Breed({required this.name});

//   factory Breed.fromJson(Map<String, dynamic> json) {
//     // log(json);
//     return Breed(name: json['message']);
//   }
// }

class Day08State extends State<Day08> {
  // const ({ Key? key }) : super(key: key);
  // late Future<Breed> breed;
  // List _breed = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   breed = fetchBreed();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day07"),
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
      body: const Center(
        child: Text("Day 08 delegate"),
      ),
    );
  }
}
