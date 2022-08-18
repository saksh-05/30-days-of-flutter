import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:math';

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

Future<List<String>> fetchBreedImage(_selectedBreedName) async {
  // log("selected name"();
  final response = await http
      .get(Uri.parse('https://dog.ceo/api/breed/$_selectedBreedName/images'));
  if (response.statusCode == 200) {
    // log(response.body[4]);
    final body = json.decode(response.body)['message'];
    List<String> res = List<String>.from(body);
    // print(body[0]);
    // log(body[0]);
    return res;
  } else {
    throw Exception("Select a breed");
  }
}

class Breed {
  final String breedName;

  Breed({required this.breedName});

  @override
  String toString() {
    return breedName;
  }

  factory Breed.fromJson(json) {
    return Breed(breedName: json);
  }
}

class Day07State extends State<Day07> {
  // const ({ Key? key }) : super(key: key);
  var _selectedBreedName = "";
  late Future<List<Breed>> breedOptions;
  late Future<List<String>> breedImage;
  // List _breed = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    breedOptions = fetchBreed();
    breedImage = fetchBreedImage(_selectedBreedName);
    // breedImage = fetchBreedImage();
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
          FutureBuilder<List<Breed>>(
            future: breedOptions,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // static String  _breed(Breed e)=>
                final breeds = snapshot.data!;
                String _breedDisplaystring(Breed option) => option.breedName;

                return Autocomplete<Breed>(
                  displayStringForOption: _breedDisplaystring,
                  optionsBuilder: (textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<Breed>.empty();
                    }
                    return breeds.where((element) {
                      return element
                          .toString()
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  onSelected: ((option) {
                    setState(() {
                      _selectedBreedName = option.toString();
                    });
                    breedImage = fetchBreedImage(_selectedBreedName);
                  }),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
          Expanded(
            child: FutureBuilder<List<String>>(
              future: breedImage,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final img = snapshot.data!;
                  // img[Random().nextInt(img.length)];
                  // final img = (val..shuffle()).first;
                  // debugPrint(img.toString());
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: img.length > 26 ? 26 : img.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 70,
                        width: 70,
                        child: FittedBox(
                          fit: BoxFit.fill, child: Image.network(img[index]),
                          // Image.network(img[Random().nextInt(img.length)]),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const Text("No breed selected");
              },
            ),
          )
        ],
      ),
    );
  }
}
