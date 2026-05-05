import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: classCompitetion()));

class classCompitetion extends StatelessWidget {
  const classCompitetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      body: Center(
        child: Container(
          width: 350,
          height: 650,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 50, 50),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white70, size: 30),
                ],
              ),

              SizedBox(height: 20),

              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/AlaraHeadphone-removebg-preview.png',
                    fit: BoxFit.contain,

                    errorBuilder:
                        (context, error, stackTrace) => const Icon(
                          Icons.broken_image,
                          color: Colors.white,
                          size: 50,
                        ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brainwavz",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "\$ 99.99",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Text(
                "Alara - planar magnetic\nheadphones",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),

                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8),

                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(color: Colors.white24, thickness: 1),
              SizedBox(height: 15),

              Center(
                child: Text(
                  "Specifications",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
