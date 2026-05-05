import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listviewpractice extends StatelessWidget {
  const Listviewpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watsapp',
          style: GoogleFonts.inter(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/apple-removebg-preview.png'),
            ),
            title: Text('Islam'),
            subtitle: Text('salam snaga ye'),
            trailing: Text('9:10'),
          ),
        ],
      ),
    );
  }
}
