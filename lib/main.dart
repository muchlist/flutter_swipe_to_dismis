import 'package:flutter/material.dart';
import 'package:flutter_swipe_to_dismiss/provider/swipelist_provider.dart';
import 'package:flutter_swipe_to_dismiss/widget/swipe_items.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Swife to delete"),
        ),
        body: ChangeNotifierProvider<SourceList>(
          create: (_) => SourceList(),
          child: const Center(
            child: SwipeItems(),
          ),
        ),
      ),
    );
  }
}
