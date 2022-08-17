import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Day07 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day07State();
  }
}

Future<List<Breed>> fetchBreed() async {
  final response =
      await http.get(Uri.parse('https://dog.ceo/api/breeds/list/all'));
  if (response.statusCode == 200) {
    // log(response.body[0]);
    final body = json.decode(response.body)['message'].keys;
    return body.map<Breed>(Breed.fromJson).toList();
  } else {
    throw Exception("Breed fetching erorr");
  }
}

class Breed {
  final String breedName;

  Breed({required this.breedName});

  factory Breed.fromJson(json) {
    return Breed(breedName: json);
  }
}

class Day07State extends State<Day07> {
  // const ({ Key? key }) : super(key: key);
  late Future<List<Breed>> breed;
  // List _breed = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    breed = fetchBreed();
  }

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
                  "Day 07 Drawer",
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
                              Navigator.pushNamed(
                                  context,
                                  index < 10
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
      body: FutureBuilder<List<Breed>>(
        future: breed,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data?.breedName);
            // if(snapshot.data?.breedName !=null)
            // Column(
            //   children: [for (var name in snapshot.data!.breedName) Text(name)],
            // );
            final breeds = snapshot.data!;

            return ListView.builder(
              itemBuilder: (context, index) {
                final breedname = breeds[index];
                return Text(breedname.breedName);
              },
              itemCount: breeds.length,
            );
            // (name) {
            //   print(name);
            //   return Text(name);
            // },
            // );
            // return Text(snapshot.data!.breedName[0]);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
