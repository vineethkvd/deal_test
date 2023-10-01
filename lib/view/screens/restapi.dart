import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestApiSample extends StatefulWidget {
  @override
  _RestApiSampleState createState() => _RestApiSampleState();
}

class _RestApiSampleState extends State<RestApiSample> {
  List<dynamic> _todos = [];

  @override
  void initState() {
    super.initState();
    _fetchTodoData();
  }

  Future<void> _fetchTodoData() async {
    final String API_KEY = '6842c385dc5e467eac91d810f147b54a';
    final Uri url = Uri.parse('https://newsapi.org/v2/top-headlines/sources?category=businessapiKey=$API_KEY');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _todos = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load todos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_todos[index]['"author'].toString()),
              leading: Text(_todos[index]['title'].toString()),
              subtitle: Text(_todos[index]['"description'].toString()),
            ),
          );
        },
      ),
    );
  }
}