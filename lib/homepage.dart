import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'my first app',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black, width: 10),
          ),
        ),
      ),
    );
  }
}
