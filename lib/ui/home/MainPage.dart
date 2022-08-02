import 'package:andromeda_flutter/ui/home/MainContent.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "主页",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MainContent(),
    );
  }
}