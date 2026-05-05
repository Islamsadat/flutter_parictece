import 'package:flutter/material.dart';

class taskpicAndImge extends StatelessWidget {
  const taskpicAndImge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Flutter Layout Demo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              'assets/WhatsApp Image 2026-04-06 at 11.57.45 PM.jpeg',
              width: 300,
            ),
          ),

          Center(child: Text('Oeschinen Lake Campground')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [Text('Beautiful Natural')]),

              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 200, 1),
                  ),
                  Text('41'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [Icon(Icons.call), Text('Call')]),
              Column(children: [Icon(Icons.route), Text('Route')]),
              Column(children: [Icon(Icons.share), Text('Share')]),
            ],
          ),
          Text(
            'The image shows a beautiful natural scene with green fields, a wide valley, and mountains in the background. Small houses and farms can be seen, creating a peaceful and simple environment. The blue sky and white clouds add to the calm feeling. Overall, it shows the beauty and harmony of nature and village life',
          ),
        ],
      ),
    );
  }
}
