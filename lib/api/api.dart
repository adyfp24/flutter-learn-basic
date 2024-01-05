import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  String _namaGroup = '';
  String _profileGroup = '';

  // Gantilah TOKEN_ANDA dengan token yang valid dari server Anda
  final String bearerToken =
      'Bearer AMOgGxVjqBxB8JNbdsKHOaly0ABG1rC9wAKKWrj0VZhzzLDPX3pKy9jvxMJRPEO6dhIWblEuYiAgfuJt';

  Future<void> showData() async {
    try {
      var url = 'http://127.0.0.1:8000/api/v1/group/7';
      var response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': bearerToken},
      );

      if (response.statusCode == 200) {
        var decodedData = json.decode(response.body);

        if (decodedData is List) {
          if (decodedData.isNotEmpty) {
            Map<String, dynamic> dataGroup = decodedData[0];
            setState(() {
              _namaGroup = dataGroup['nama_grup'] ?? ''; // Null check
              _profileGroup = dataGroup['profile_grup'] ?? ''; // Null check
            });
          }
        } else if (decodedData is Map<String, dynamic>) {
          setState(() {
            _namaGroup = decodedData['nama_grup'] ?? ''; // Null check
            _profileGroup = decodedData['profile_grup'] ?? ''; // Null check
          });
        } else {
          print('Unexpected data format: $decodedData');
        }
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test API'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_namaGroup),
              Text(_profileGroup),
              ElevatedButton(
                onPressed: showData,
                child: Text('Fetch Data'),
              )
            ],
          ),
        ));
  }
}
