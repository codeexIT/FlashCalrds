import 'package:flutter/material.dart';
import 'cardTable.dart';

void main() {
  runApp(FlashCalrds());
}

class FlashCalrds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen()
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardTable(),
      )
    );
  }
}