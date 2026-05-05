import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfieldandbottun extends StatelessWidget {
  const Textfieldandbottun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Flexible(
          flex: 30,
          child: Flexible(
            flex: 20,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/b.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: 70,
                width: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      offset: Offset(1, 1),
                      blurRadius: 10,
                    ),
                  ],
                  color: const Color.fromARGB(255, 58, 58, 58).withOpacity(0.1),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      Flexible(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 98, 45, 184),
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/7686cf27613adfc9c0b4385c9d80ac3a.jpg',
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 25,
                          right: 25,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(29)),
                          ),
                          child: TextField(
                            style: TextStyle(),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              suffixIcon: Icon(Icons.person),
                              label: Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 98, 60, 167),
                                ),
                              ),
                              alignLabelWithHint: true,
                              hintText: 'Enter User Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 25,
                          right: 25,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(29)),
                          ),
                          child: TextField(
                            style: TextStyle(),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              suffixIcon: Icon(Icons.visibility_off),
                              label: Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(
                                    255,
                                    128,
                                    93,
                                    193,
                                  ),
                                ),
                              ),
                              alignLabelWithHint: true,
                              hintText: 'Enter Your Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              print('Button is preased');
                            },
                            child: Text(
                              'Forgot Password ?',
                              style: GoogleFonts.aDLaMDisplay(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 93, 69, 161),
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                      255,
                                      135,
                                      134,
                                      134,
                                    ),
                                    offset: Offset(1, 2),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          print('Button is preased');
                        },
                        child: Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurpleAccent),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                offset: Offset(2, 3),
                                blurRadius: 4,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.aDLaMDisplay(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 25,
                          right: 25,
                        ),
                        child: Text(
                          '______ Sign in with ______',
                          style: TextStyle(
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.white,
                                offset: Offset(1, 1),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 100,
                          right: 100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                print('Facebook icon is preased');
                              },
                              child: Icon(
                                Icons.facebook_outlined,
                                color: Colors.blueAccent,
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print('Google icon is preased');
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0, 0),
                                      blurRadius: 8,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/google1-removebg-preview.png',
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print('Apple icon is preased');
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0, 0),
                                      blurRadius: 8,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/apple-removebg-preview.png',
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
