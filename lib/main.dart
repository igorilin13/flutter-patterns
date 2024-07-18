import 'package:flutter/material.dart';

import 'patterns.dart';

void main() {
  runApp(const PatternsApp());
}

class PatternsApp extends StatelessWidget {
  const PatternsApp({super.key});

  @override
  Widget build(BuildContext context) {
    const patterns = Pattern.values;

    return MaterialApp(
      title: 'Flutter Patterns',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Patterns'),
        ),
        body: ListView.separated(
          itemCount: patterns.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            final pattern = patterns[index];
            if (index == 0 || patterns[index - 1].section != pattern.section) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      pattern.section.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  _buildPatternTile(context, pattern),
                ],
              );
            } else {
              return _buildPatternTile(context, pattern);
            }
          },
        ),
      ),
    );
  }

  Widget _buildPatternTile(BuildContext context, Pattern pattern) {
    return ListTile(
      title: Text(pattern.title),
      visualDensity: VisualDensity.compact,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pattern.screen),
        );
      },
    );
  }
}
