import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatoreeve/page/bar_page.dart';
import 'package:navigatoreeve/page/garden_page.dart';
import 'package:navigatoreeve/page/home_page.dart';

void main (){
runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigator And Routes'),),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: UserAccountsDrawerHeader(
                accountEmail: Text(''),
                accountName: Text('Shipu'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Bari'),
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (cnx){
                  return BariPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.ten_k_sharp),
              title: Text('Garden'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (cnx){
                  return GardenPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
           child: ElevatedButton(
             onPressed: (){
               Navigator.push(context, CupertinoPageRoute(builder: (context){
                 return HomePage();
               }));
             },
             child: Text('Home Page'),
           ),
          ),
          Container(

            child: TextButton(

              onPressed: (){},
              child: Text('Bari Page'),
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnx){return GardenPage();}));
              },
              child: Text('Garden Page', style: TextStyle(
                fontSize: 22,
              ),),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context){
                  return HomePage();
                }));
              },
              child: Text('Exit'),
            ),
          ),
        ],
      ),
    );
  }
}
