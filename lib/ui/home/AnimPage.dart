import 'package:andromeda_flutter/ui/home/AnimContent.dart';
import 'package:flutter/material.dart';

class AnimaPage extends StatelessWidget{
  const AnimaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        home: AnimContent(),
      );

}