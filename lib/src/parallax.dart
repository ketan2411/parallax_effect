// ignore_for_file: public_member_api_docs, sort_constructors_first
library parallax;
import 'package:flutter/material.dart';
import 'package:parallax/src/classes.dart';

/// A Calculator.
class Parallax extends StatefulWidget {
  final double? height;
  final double? width;
  final List<ParallaxItem> items;
  final bool enableDrag;
  const Parallax({
    Key? key,
    this.height,
    this.width,
    required this.items,
    this.enableDrag = false,
  }) : super(key: key);

  @override
  State<Parallax> createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: ((details) {
        if(widget.enableDrag){
          setState(() {
          x = x + details.delta.dy;
          y = y + details.delta.dx;
        });
        }
      }),
      child: Container(
        color: Colors.white,
        height: widget.height,
        width: widget.width,
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              x = x + event.localDelta.dy;
              y = y + event.localDelta.dx;
            });
          },
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ...widget.items.map(
                (element) => Align(
                  alignment: Alignment(
                      element.alignment.y + y * element.factor.y * 0.001,
                      element.alignment.x + x * element.factor.x * 0.001),
                  child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateX(element.rotationFactor != null
                            ? x * element.rotationFactor!.x * 0.001
                            : 0)
                        ..rotateY(element.rotationFactor != null
                            ? -y * element.rotationFactor!.y * 0.001
                            : 0),
                      alignment: FractionalOffset.center,
                      child: element.child),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
