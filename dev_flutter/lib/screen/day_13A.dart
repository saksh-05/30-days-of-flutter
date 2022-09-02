import 'package:first_app/screen/day_13B.dart';
import 'package:flutter/material.dart';

import 'dart:developer';

class Day13A extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";
  Day13A({key, required this.name});
  String name;
  TextEditingController _locationController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    log("13A");
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 13-A"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://images.unsplash.com/photo-1545987796-200677ee1011?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                hintText: "Enter location",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Day13B(
                    name: name,
                    location: _locationController.text,
                  ),
                ),
              );
            },
            child: const Text("Send to 13-B"),
          ),
          Text("Value passed from 13-A $name")
        ],
      ),
    );
  }
}
