import 'package:flutter/material.dart';
import 'home.dart';
import 'tambah.dart';
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          body2: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.black,
              height: 1.5),
        ),
      ),
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BELAJAR API",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahScreen(),
                    ));
              }),
        ],
      ),
      body: HomeScreen(),
    );
  }
}