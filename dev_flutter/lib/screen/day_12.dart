import 'package:flutter/material.dart';

class Day12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day12State();
  }
}

class Day12State extends State<Day12> {
  int _index = 0;
  int _selectedOption = -1;
  int score = 0;
  bool optionSelected = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeIndex() {
    setState(() {
      if (_index < 4) {
        _index = (_index + 1) % 5;
      }
      _selectedOption = -1;
      optionSelected = false;
    });
  }

  void restartGame() {
    setState(() {
      _index = 0;
      _selectedOption = -1;
      optionSelected = false;
      score = 0;
    });
  }

  static const questions = [
    "Select A:",
    "Select B:",
    "Select C:",
    "Select D:",
    "Select E:",
  ];
  static const options = ["A", "B", "C", "D", "E"];

  List<Widget> _optionButtons() {
    List<Widget> _options = List.generate(
      options.length,
      (indx) {
        return ElevatedButton(
          child: Text(options[indx]),
          style: ElevatedButton.styleFrom(
            primary: optionSelected
                ? (_index == indx
                    ? Colors.green
                    : _selectedOption == indx
                        ? Colors.red
                        : Colors.blue)
                : Colors.blue,
          ),
          onPressed:
              optionSelected && (_index == indx || _selectedOption == indx)
                  ? () {}
                  : !optionSelected
                      ? () => setState(
                            () {
                              _selectedOption = indx;
                              optionSelected = true;
                              if (_selectedOption == _index) {
                                score = score + 1;
                              }
                            },
                          )
                      : null,
        );
      },
    );
    return _options;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 12 (Quiz App)"),
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
                  "Day 10 Drawer",
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              questions[_index],
              textScaleFactor: 1.5,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView(
                  children: List.generate(
                options.length,
                (indx) {
                  return ElevatedButton(
                    child: Text(options[indx]),
                    style: ElevatedButton.styleFrom(
                      primary: optionSelected
                          ? (_index == indx
                              ? Colors.green
                              : _selectedOption == indx
                                  ? Colors.red
                                  : Colors.blue)
                          : Colors.blue,
                    ),
                    onPressed: optionSelected &&
                            (_index == indx || _selectedOption == indx)
                        ? () {}
                        : !optionSelected
                            ? () => setState(
                                  () {
                                    _selectedOption = indx;
                                    optionSelected = true;
                                    if (_selectedOption == _index) {
                                      score = score + 1;
                                    }
                                  },
                                )
                            : null,
                  );
                },
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: restartGame,
                    child: const Text("Restart")),
                ElevatedButton(
                  onPressed: optionSelected && _index != 5 ? changeIndex : null,
                  child: const Text("Next"),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Your Score: $score",
                textScaleFactor: 1.5,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
