import 'package:flutter/material.dart';

class Expends extends StatelessWidget {
  const Expends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('Expanded'),
      ),
      body: Column(
        children: [
          Text('Task: 01;', style: TextStyle(fontSize: 30)),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle,)',
                ),
              ),
              Icon(Icons.airport_shuttle),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text('Task: 02;', style: TextStyle(fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 234, 88, 88),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
