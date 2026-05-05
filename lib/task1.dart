import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Task 1', style: TextStyle(color: Colors.lightGreen)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(color: Colors.purple),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 185,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    width: 150,
                    height: 145,
                    decoration: BoxDecoration(color: Colors.deepOrange),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 350,
            height: 240,
            decoration: BoxDecoration(color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
