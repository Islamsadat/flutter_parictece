import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  List<Color> ContainerColors = [
    Colors.yellow,
    Colors.redAccent,
    Colors.lightBlue,
    Colors.lightGreenAccent,
    Colors.purple,
    Colors.cyanAccent,
    Colors.lightGreenAccent,
  ];
  List<Color> TextColors = [
    Colors.black,
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.black,
  ];
  List<Color> ShadowColors = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.white,
    Colors.black,
    const Color.fromARGB(255, 239, 232, 231),
    Colors.white,
  ];
  List<String> Review = ['3.3', '4.3', '5.0', '2.3', '5.0', '5.0', '4.3'];

  List<Map> products = [
    {
      'name': 'Shampoo',
      'price': '\$5',
      'image':
          'https://i.pinimg.com/1200x/8e/27/c0/8e27c011b2d52f9c9b29c4193c56fba6.jpg',
    },
    {
      'name': 'Shampoo',
      'price': '\$5',
      'image':
          'https://i.pinimg.com/736x/5a/7e/34/5a7e34cdfda4d7bbd0fc44f4307925fe.jpg',
    },
    {
      'name': 'Shampoo',
      'price': '\$5',
      'image':
          'https://i.pinimg.com/1200x/de/3e/1d/de3e1d29ac19bdf5413d52fe4b540bfb.jpg',
    },

    {
      'name': 'Perfume',
      'price': '\$50',
      'image':
          'https://i.pinimg.com/1200x/69/7a/0e/697a0ea5fa3ffb90134a54e634899fd0.jpg',
    },
    {
      'name': 'Moistriser',
      'price': '\$100',
      'image':
          'https://i.pinimg.com/1200x/ad/4f/ef/ad4fef311d18927d00a0d7f12b36cd56.jpg',
    },
    {
      'name': 'Shirt',
      'price': '\$20',
      'image':
          'https://i.pinimg.com/1200x/02/7b/df/027bdfeaa0daddfa6fef7921e0aac1d9.jpg',
    },
    {
      'name': 'Perfume',
      'price': '\$50',
      'image':
          'https://i.pinimg.com/1200x/69/7a/0e/697a0ea5fa3ffb90134a54e634899fd0.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 134, 255, 107),
        title: Center(child: Text('Gridviewbuilder')),
      ),
      body: GridView.builder(
        itemCount: ContainerColors.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 6,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: ContainerColors[index],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 3),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ShadowColors[index],
                                offset: Offset(2, 3),
                                blurRadius: 4,
                              ),
                            ],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: NetworkImage(products[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          left: 20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    top: 0,
                                  ),
                                  child: Text(
                                    products[index]['name'],
                                    style: GoogleFonts.pacifico(
                                      color: TextColors[index],
                                      shadows: [
                                        Shadow(
                                          color: ShadowColors[index],
                                          offset: Offset(1, 2),
                                          blurRadius: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    products[index]['price'],
                                    style: GoogleFonts.aDLaMDisplay(
                                      color: TextColors[index],
                                      shadows: [
                                        Shadow(
                                          color: ShadowColors[index],
                                          offset: Offset(1, 2),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: TextColors[index],
                                    shadows: [
                                      Shadow(
                                        color: ShadowColors[index],
                                        offset: Offset(1, 2),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: TextColors[index],
                                    shadows: [
                                      Shadow(
                                        color: ShadowColors[index],
                                        offset: Offset(1, 2),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: TextColors[index],
                                    shadows: [
                                      Shadow(
                                        color: ShadowColors[index],
                                        offset: Offset(1, 2),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: TextColors[index],
                                    shadows: [
                                      Shadow(
                                        color: ShadowColors[index],
                                        offset: Offset(1, 2),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      Review[index],
                                      style: TextStyle(
                                        color: TextColors[index],
                                        shadows: [
                                          Shadow(
                                            color: ShadowColors[index],
                                            offset: Offset(1, 2),
                                            blurRadius: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Order Now',
                              style: GoogleFonts.aDLaMDisplay(
                                color: TextColors[index],
                                shadows: [
                                  Shadow(
                                    color: ShadowColors[index],
                                    offset: Offset(1, 2),
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.add_shopping_cart_outlined),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
