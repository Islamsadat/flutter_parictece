import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvanceContanire extends StatelessWidget {
  const AdvanceContanire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 254, 238),
      body: Center(
        child: Container(
          width: 270,
          height: 500,
          decoration: BoxDecoration(
            color: (const Color.fromARGB(255, 151, 151, 151)).withOpacity(0.7),

            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 104, 104, 104),
                offset: Offset(20, 20),
                blurRadius: 20,
                spreadRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),

          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    248,
                    246,
                    206,
                  ).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 161, 160, 160),
                      offset: Offset(5, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Image.asset(
                  'assets/headphone.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Head Phones',
                      style: GoogleFonts.aDLaMDisplay(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  children: [
                    Text('\$59.00', style: GoogleFonts.aDLaMDisplay()),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.star_border,
                        size: 20,
                        color: Colors.amber,
                      ),
                    ),
                    Icon(Icons.star_border, size: 20, color: Colors.amber),
                    Icon(Icons.star_border, size: 20, color: Colors.amber),
                    Icon(Icons.star_border, size: 20, color: Colors.amber),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('4.5'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    240,
                    245,
                    181,
                  ).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 161, 160, 160),
                      offset: Offset(5, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'This image shows a stylish and modern gaming headset with a bold black and yellow color combination. .',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    241,
                    250,
                    164,
                  ).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 161, 161, 160),
                      offset: Offset(5, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Text('ADD TO CARD', style: GoogleFonts.aDLaMDisplay()),
                    Icon(Icons.shopping_cart_checkout),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
