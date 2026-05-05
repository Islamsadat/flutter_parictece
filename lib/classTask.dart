import 'package:flutter/material.dart';

class Classtask extends StatelessWidget {
  const Classtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('class Task'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    child: Center(child: Text('1')),
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    child: Center(child: Text('2')),
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 58, 243, 33),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Center(child: Text('3')),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 34, 34),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Center(child: Text('4')),
                            width: 100,
                            height: 200,
                            color: Colors.amber,
                          ),
                          Container(
                            child: Center(child: Text('6')),
                            width: 100,
                            height: 100,
                            color: const Color.fromARGB(255, 197, 8, 218),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Center(child: Text('5')),
                            width: 100,
                            height: 100,
                            color: const Color.fromARGB(255, 7, 187, 61),
                          ),
                          Container(
                            child: Center(child: Text('7')),
                            width: 100,
                            height: 200,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 250,
                height: 100,
                color: Colors.black87,
                child: Center(
                  child: Text('8', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(221, 111, 10, 103),
                child: Center(
                  child: Text('9', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Container(
            width: 355,
            height: 200,
            color: const Color.fromARGB(221, 111, 10, 103),
            child: Center(
              child: Text('9', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
