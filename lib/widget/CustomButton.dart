
import 'package:flutter/material.dart';

//自定义控件
class CustomButton extends StatelessWidget{
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) => ElevatedButton(onPressed: (){}, child: Text(label));
}