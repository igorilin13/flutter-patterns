import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_patterns/data/rest/api_service.dart';
import 'package:flutter_patterns/data/rest/models.dart';
import 'package:flutter_patterns/util/result.dart';

class RestApiScreen extends StatefulWidget {
  const RestApiScreen({super.key});

  @override
  State<RestApiScreen> createState() => _RestApiScreenState();
}

class _RestApiScreenState extends State<RestApiScreen> {
  final RestApiService _apiService = RestApiService(
    _createDio("https://api.restful-api.dev/", AuthInterceptor("exampleKey")),
  );
  Future<Result<List<ResponseItem>>>? _resultFuture;

  @override
  void initState() {
    _resultFuture = _apiService.getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("REST API")),
      body: FutureBuilder<Result<List<ResponseItem>>>(
        future: _resultFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final result = snapshot.data!;
            return result.fold(
              onSuccess: (items) {
                return ListView.builder(
                  itemCount: items.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _buildPerformPostButton(context);
                    }
                    final item = items[index - 1];
                    return ListTile(title: Text(item.name));
                  },
                );
              },
              onFailure: (error) => Center(child: Text("Error: $error")),
            );
          }

          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }

  Widget _buildPerformPostButton(BuildContext context) {
    return ElevatedButton(
      child: const Text("Perform POST request"),
      onPressed: () async {
        final result = await _apiService.addItem(
          AddItemRequest(name: "New item"),
        );
        if (context.mounted) {
          final snackBar = SnackBar(
            content: Text('Result: ${result.isSuccess}'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }
}

Dio _createDio(String url, Interceptor authInterceptor) {
  return Dio(BaseOptions(baseUrl: url))
    ..interceptors.add(authInterceptor)
    ..interceptors.add(LogInterceptor(
      request: false,
      requestHeader: false,
      responseHeader: true,
    ));
}
