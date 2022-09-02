import 'package:first_app/screen/day_13A.dart';
import 'package:flutter/material.dart';

class Day13B extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  // const string side = "Left";

  String location, name;
  Day13B({required this.location, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 13-B"),
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
          Text("Value passed from 13 and 13-A: "),
          Text("$name"),
          Text("$location"),
        ],
      ),
    );
  }
}
