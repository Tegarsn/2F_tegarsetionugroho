import 'package:flutter/material.dart';

class PersonalDataDisplay extends StatelessWidget {
  final List<Map<String, String>>? data;
  final VoidCallback clearData;

  // PersonalDataDisplay({this.data});
  PersonalDataDisplay({required this.data, required this.clearData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Personal'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context, index) {
                final item = data?[index];
                return ListTile(
                  title: Text('Nama: ${item?['Name']}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email: ${item?['Email']}'),
                      Text('Tanggal Lahir: ${item?['BirthDate']}'),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: clearData,
            child: Text('Hapus Data'),
          ),
        ],
      ),
    );
  }
}
