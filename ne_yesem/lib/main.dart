// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffe9f7f5),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 172, 52),
          centerTitle: true,
          title: const Text(
            'Bugun Ne Yesem',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        colorBrightness: Brightness.dark, // arkaplandaki efekti gostermiyor
        onPressed: () {
          setState(
            () {
              if (i < 3) {
                i++;
              } else {
                i = 1;
              }
            },
          );
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/corba$i.jpg'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/yemek$i.jpg'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/tatli$i.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
