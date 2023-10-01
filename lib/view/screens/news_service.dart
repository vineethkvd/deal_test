import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestApiSample extends StatefulWidget {
  const RestApiSample({Key? key}) : super(key: key);

  @override
  State<RestApiSample> createState() => _RestApiSampleState();
}

class _RestApiSampleState extends State<RestApiSample> {
  List<Map<String, dynamic>> todoDataList = []; // Use a list to store multiple todos

  Future<void> fetchTodo() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      final parsedData = json.decode(response.body);
      setState(() {
        todoDataList = List<Map<String, dynamic>>.from(parsedData);
      });
    } else {
      throw Exception('Failed to load todos');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSONPlaceholder Todo'),
      ),
      body: ListView.builder(
        itemCount: todoDataList.length,
        itemBuilder: (context, index) {
          final todoItem = todoDataList[index];
          final title = todoItem['title'] as String?;
          final id = todoItem['id'] as int?;
          final completed = todoItem['completed'] as bool?;

          return Padding(
            padding: const EdgeInsets.all(13.0),
            child: Card(
              child: ListTile(
                title: Text(title ?? 'Title not available'),
                leading: Text(id?.toString() ?? 'ID not available'),
                subtitle: Text(completed?.toString() ?? 'Completion status not available'),
              ),
            ),
          );
        },
      ),
    );
  }
}
