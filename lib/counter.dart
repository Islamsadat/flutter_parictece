import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int num = 0;
  void counter() {
    num++;
  }

  void subtaction() {
    if (num > 0) {
      num--;
    }
  }

  bool isClicked = false;

  void Rest() {
    int zero = 0;
    if (num > 0) {
      num = zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Counter',
          style: GoogleFonts.montez(color: Colors.white, fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(110),
                    bottomRight: Radius.circular(110),
                  ),
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 3),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    num.toString(),
                    style: GoogleFonts.montez(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                counter();
                // print(num);
                setState(() {});
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 27, right: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: isClicked ? Colors.blue : Colors.black,
                          border: Border.all(color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, 3),
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(110),
                            bottomLeft: Radius.circular(110),
                          ),
                        ),
                        child: Icon(Icons.add_circle, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          subtaction();
                          setState(() {});
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(2, 3),
                                blurRadius: 3,
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(110),
                              bottomRight: Radius.circular(110),
                            ),
                          ),
                          child: Icon(Icons.remove_circle, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Rest();
                setState(() {});
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 3),
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: Icon(Icons.restart_alt_rounded, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
