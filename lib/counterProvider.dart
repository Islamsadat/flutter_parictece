import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/counterProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Counterprovider extends StatefulWidget {
  const Counterprovider({super.key});

  @override
  State<Counterprovider> createState() => _CounterproviderState();
}

class _CounterproviderState extends State<Counterprovider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter App',
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Consumer<counter1>(
          builder: (context, obj, child) {
            return GestureDetector(
              onTap: () {
                obj.decrement();
                obj.changeColor(Colors.red);
              },
              child: Container(
                height: obj.count,
                width: obj.count,
                color: obj.color,
              ),
            );
          },
        ),
      ),

      floatingActionButton: Consumer<counter1>(
        builder: (context, obj, child) {
          return FloatingActionButton(
            onPressed: () {
              obj.increment();
            },
            child: Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.green,
          );
        },
      ),
    );
  }
}
