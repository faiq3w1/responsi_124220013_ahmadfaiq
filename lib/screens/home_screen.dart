import 'package:flutter/material.dart';
import 'package:responsi_124220013_ahmadfaiq/services/api_service.dart';
import '../models/amiibo_model.dart';
import '../widgets/amiibo_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService _apiService = ApiService();
  late Future<List<Amiibo>> _amiibos;

  @override
  void initState() {
    super.initState();
    _amiibos = _apiService.fetchAmiibos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amiibo App'),
      ),
      body: FutureBuilder<List<Amiibo>>(
        future: _amiibos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final amiibos = snapshot.data ?? [];
            return ListView.builder(
              itemCount: amiibos.length,
              itemBuilder: (context, index) {
                return AmiiboListItem(amiibo: amiibos[index]);
              },
            );
          }
        },
      ),
    );
  }
}
