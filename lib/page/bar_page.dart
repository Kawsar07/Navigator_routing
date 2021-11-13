import 'package:flutter/material.dart';

class BariPage extends StatefulWidget {
  const BariPage({Key? key}) : super(key: key);

  @override
  _BariPageState createState() => _BariPageState();
}

class _BariPageState extends State<BariPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text('Bari Page'),),
    );
  }
}
