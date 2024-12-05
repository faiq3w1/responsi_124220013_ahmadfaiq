import 'package:flutter/material.dart';
import '../models/amiibo_model.dart';

class AmiiboListItem extends StatelessWidget {
  final Amiibo amiibo;

  const AmiiboListItem({super.key, required this.amiibo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(amiibo.image),
      title: Text(amiibo.name),
      subtitle: Text(amiibo.gameSeries),
      trailing: IconButton(
        icon: const Icon(Icons.favorite_border),
        onPressed: () {
          // Tambahkan logika untuk menambah ke favorit
        },
      ),
      onTap: () {
        // Navigasi ke DetailScreen
      },
    );
  }
}
