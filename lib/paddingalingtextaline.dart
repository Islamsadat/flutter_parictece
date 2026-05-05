import 'package:flutter/material.dart';

class Paddingalingtextaline extends StatelessWidget {
  const Paddingalingtextaline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Padding', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/7686cf27613adfc9c0b4385c9d80ac3a.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('Name: ABC'),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                children: [
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.photo),
                  Spacer(),
                  Icon(Icons.browse_gallery),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
              child: Text('Bio:'),
            ),
            Text(
              ' stepping into new experiences. Im here to share thoughts and moments that matter. Lets connect and see where the journey takes us. 📱',
            ),
          ],
        ),
      ),
    );
  }
}
