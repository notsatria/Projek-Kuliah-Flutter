import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DigimonList extends StatelessWidget {
  final String apiUrl = "https://digimon-api.vercel.app/api/digimon";

  const DigimonList({super.key});

  Future<List<dynamic>> _fetchDigimonList() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digimon List"),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _fetchDigimonList(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.only(top: 12, left: 10, right: 10),
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: ListTile(
                          leading: Image.network(snapshot.data[index]['img']),
                          title: Text(
                            snapshot.data[index]['name'],
                          ),
                          subtitle: Text(
                            snapshot.data[index]['level'],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
