import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listdynamiclist extends StatefulWidget {
  const Listdynamiclist({super.key});

  @override
  State<Listdynamiclist> createState() => _ListdynamiclistState();
}

class _ListdynamiclistState extends State<Listdynamiclist> {
  List<Map> Textcolors = [
    {'colors1': const Color.fromARGB(255, 249, 248, 248)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
    {'colors1': const Color.fromARGB(0, 0, 0, 0)},
  ];
  List<Map> colors = [
    {'colors': const Color.fromARGB(255, 29, 25, 30)},
    {'colors': const Color.fromARGB(255, 247, 247, 247)},
    {'colors': const Color.fromARGB(255, 255, 77, 77)},
    {'colors': const Color.fromARGB(255, 180, 255, 110)},
    {'colors': const Color.fromARGB(255, 51, 121, 241)},
    {'colors': Colors.red},
    {'colors': const Color.fromARGB(255, 180, 255, 110)},
  ];

  List<Map> bikelist = [
    {'Image': 'assets/bike1.jpg', 'title': 'Kawasaki Ninja H2'},
    {'Image': 'assets/bike2.jpg', 'title': 'Ninja H2R'},
    {'Image': 'assets/bike3.jpg', 'title': 'Ninja H2'},
    {'Image': 'assets/bike4.jpg', 'title': 'Racing Bike'},
    {'Image': 'assets/bike5.jpg', 'title': 'Ninja H2'},
    {'Image': 'assets/bike3.jpg', 'title': 'Ninja H2'},
    {'Image': 'assets/bike4.jpg', 'title': 'Ninja H2'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        232,
        231,
        231,
      ), // Match background to container
      appBar: AppBar(
        title: Text(
          'Bike List',
          style: GoogleFonts.inter(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: bikelist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors[index]['colors'],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 20, 18, 18),
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      bikelist[index]['Image'].toString(),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    bikelist[index]['title'],
                    style: TextStyle(
                      color: Textcolors[index]['colors1'],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 20, 18, 18),
                          offset: Offset(4, 4),
                          blurRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
