
import 'package:flutter/material.dart';

class ParallaxItem {
  final ParallaxFactor factor;
  final Alignment alignment;
  final ParallaxFactor? rotationFactor;
  final Widget child;
  // ignore: use_key_in_widget_constructors
  const ParallaxItem({
    Key? key,
    required this.factor,
    this.alignment = Alignment.center,
    this.rotationFactor,
    required this.child,
  });
}

class ParallaxFactor {
  double x;
  double y;
  ParallaxFactor({
    this.x = 0,
    this.y = 0,
  });
}
