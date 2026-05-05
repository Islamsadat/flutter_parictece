import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'provider/favoritProvider.dart';

class favoritmain extends StatefulWidget {
  const favoritmain({super.key});

  @override
  State<favoritmain> createState() => _favoritmainState();
}

class _favoritmainState extends State<favoritmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favrt List View')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Consumer<favorits>(
            builder: (context, favrtProvider, child) {
              final item = 'Item ${index + 1}';
              final isFavrt = favrtProvider.favrtList.contains(item);
              return ListTile(
                tileColor: isFavrt ? Colors.green[100] : null,
                title: Text(item),
                trailing: IconButton(
                  icon: Icon(
                    isFavrt ? Icons.favorite : Icons.favorite_border,
                    color: isFavrt ? Colors.red : null,
                  ),
                  onPressed: () {
                    if (isFavrt) {
                      favrtProvider.removeFromFavrt(item);
                    } else {
                      favrtProvider.addToFavrt(item);
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
