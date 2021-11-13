import 'package:flutter/material.dart';
import 'package:navigatoreeve/main.dart';
import 'package:navigatoreeve/page/home_page.dart';

class GardenPage extends StatefulWidget {
  const GardenPage({Key? key}) : super(key: key);

  @override
  _GardenPageState createState() => _GardenPageState();
}

class _GardenPageState extends State<GardenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('Garden Page'),),
      body: Container(
        child: ElevatedButton(
         onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
             return MyApp();
           }));
         },
          child: Text('Back Home'),
        ),
      ),
    );
  }
}
