import 'package:flutter/material.dart';

class PainterPage extends StatelessWidget {
  const PainterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("画笔")),
            body: const PainterContent()),
      );
}

class PainterContent extends StatefulWidget {
  const PainterContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PainterContentState();
}

class _PainterContentState extends State<PainterContent> {
  List<Offset?> _points = <Offset>[];

  @override
  Widget build(BuildContext context) => GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            RenderBox? referenceBox = context.findRenderObject() as RenderBox;
            Offset localPosition =
                referenceBox.globalToLocal(details.globalPosition);
            _points = List.from(_points)..add(localPosition);
          });
        },
        onPanEnd: (DragEndDetails details) {
          _points.add(null);
        },
        child: CustomPaint(
          painter: SignaturePainter(_points),
          size: Size.infinite,
        ),
      );
}

class SignaturePainter extends CustomPainter {
  final List<Offset?> points;

  SignaturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant SignaturePainter oldDelegate) =>
      oldDelegate.points != points;
}
