import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Advance_contanire.dart';
import 'package:flutter_application_1/Bottom-nev-bar.dart';
import 'package:flutter_application_1/Gridviewbuilder.dart';
import 'package:flutter_application_1/Row&colum.dart';
import 'package:flutter_application_1/Task-imeg&icon.dart';
import 'package:flutter_application_1/Textfieldandbottun.dart';
import 'package:flutter_application_1/checkbox-redio..dart';
import 'package:flutter_application_1/classCompitetion.dart';
import 'package:flutter_application_1/classTask.dart';
import 'package:flutter_application_1/DrawerPractice.dart';
import 'package:flutter_application_1/counter.dart';
import 'package:flutter_application_1/counterProvider.dart';
import 'package:flutter_application_1/expends.dart';
import 'package:flutter_application_1/favoritmain.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/imeg&icone.dart';
import 'package:flutter_application_1/kashif.dart';

import 'package:flutter_application_1/listDynamiclist.dart';
import 'package:flutter_application_1/listviewpractice.dart';
import 'package:flutter_application_1/paddingalingtextaline.dart';
import 'package:flutter_application_1/provider/counterProvider.dart';
import 'package:flutter_application_1/provider/favoritProvider.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/stack.dart';
import 'package:flutter_application_1/task1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => favorits(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SafetyCounterScreen(),
    );
  }
}
