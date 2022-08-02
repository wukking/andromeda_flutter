import 'package:flutter/material.dart';

class AnimContent extends StatefulWidget{
  const AnimContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_AnimaContentState();
}

class _AnimaContentState extends State<AnimContent> with TickerProviderStateMixin{
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(microseconds: 5000),
    vsync: this);
    curve = CurvedAnimation(parent: controller,curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("动画"),
      ),
      body: Center(
        child: FadeTransition(opacity: curve,
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.brush),
        onPressed: () { controller.forward(); },
      ),
    );
  }

}