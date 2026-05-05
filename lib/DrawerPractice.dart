import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPractice extends StatefulWidget {
  const DrawerPractice({super.key});

  @override
  State<DrawerPractice> createState() => _DrawerPracticeState();
}

class _DrawerPracticeState extends State<DrawerPractice> {
  List<Map> ShoesList = [
    {'image': 'assets/shoes4-removebg-preview.png'},
    {'image': 'assets/shoes3-removebg-preview.png'},
    {'image': 'assets/sh0es2-removebg-preview.png'},
    {'image': 'assets/shoes3-removebg-preview.png'},
    {'image': 'assets/shoes4-removebg-preview.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Collection')),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.settings), title: Text('Setting')),
              ListTile(leading: Icon(Icons.person), title: Text('Profile')),
              ListTile(leading: Icon(Icons.history), title: Text('History')),
            ],
          ),
        ),
        body: Flexible(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: 400,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Text(
                          'Collection',
                          style: GoogleFonts.aDLaMDisplay(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Shoes',
                          style: GoogleFonts.aDLaMDisplay(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),

                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          // color: const Color.fromARGB(255, 142, 142, 142),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 110,
                      child: Container(
                        height: 290,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 198, 198, 198),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 3),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 20,
                                      ),
                                      child: Text(
                                        'NIKE',
                                        style: GoogleFonts.aDLaMDisplay(
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                    Text('Shoes'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '\$180.000',
                                        style: GoogleFonts.aDLaMDisplay(),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                    bottom: 40,
                                  ),
                                  child: Icon(Icons.favorite),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Positioned(
                        left: 95,
                        bottom: -90,
                        child: Container(
                          width: 300,
                          height: 450,
                          // color: Colors.amber,
                          child: Image.asset(
                            'assets/shoess-removebg-preview.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lots of choices',
                          style: GoogleFonts.aDLaMDisplay(fontSize: 18),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Show All',
                                style: GoogleFonts.aDLaMDisplay(fontSize: 18),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.forward_outlined),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 330,
                  height: 150,
                  // decoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 224, 224, 224),
                  //   borderRadius: BorderRadius.all(Radius.circular(20)),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.black,
                  //       offset: Offset(0, 3),
                  //       blurRadius: 3,
                  //     ),
                  //   ],
                  // ),
                  child: SizedBox(
                    height: 250,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ShoesList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10,

                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 2,
                            right: 3,
                            bottom: 15,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 218, 218, 218),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 70, 70, 70),
                                  offset: Offset(1, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 8,
                                        top: 10,
                                        bottom: 2,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ShoesList[index]['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
