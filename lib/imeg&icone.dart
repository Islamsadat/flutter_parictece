import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myimg extends StatelessWidget {
  const Myimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('imge And icons'),
      ),
      body: Column(
        children: [
          Image.asset('assets/cdb38eaafef554f23f12d46ddd49f092.jpg'),
          Text(
            'MY FIVRET CAR',
            style: GoogleFonts.tangerine(fontSize: 50, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
