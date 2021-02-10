import 'dart:collection';

import 'package:flutter/material.dart';

class SourceList with ChangeNotifier {
  final _myList = List<String>.generate(10, (i) => "Number $i");

  List<String> get values => UnmodifiableListView(_myList);

  void removeItem(int index) {
    _myList.removeAt(index);
    notifyListeners();
  }
}

class DismissBackground extends StatelessWidget {
  const DismissBackground();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}
