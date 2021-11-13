import 'package:flutter/material.dart';
import 'package:navigatoreeve/page/garden_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('Home Page'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: ()=>Navigator.pop(context, false),
      ),
      ),
body: InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (cnx){return GardenPage();}));
  },
  child:   Container(

    height: 120,

    width: 120,

    decoration: BoxDecoration(

      color: Colors.blue,

    ),

  ),
),
    );
  }
}
