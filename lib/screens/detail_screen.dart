import 'package:flutter/material.dart';
import '../models/amiibo_model.dart';

class DetailScreen extends StatelessWidget {
  final Amiibo amiibo;

  const DetailScreen({super.key, required this.amiibo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(amiibo.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(amiibo.image),
          Text('Name: ${amiibo.name}', style: const TextStyle(fontSize: 18)),
          Text('Game Series: ${amiibo.gameSeries}',
              style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
