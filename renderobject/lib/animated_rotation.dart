
import 'package:flutter/material.dart';

class AnimatedRotation extends StatefulWidget {
  const AnimatedRotation({this.child, this.turns, this.duration});

  final Widget child;
  
  final double turns;

  final Duration duration;

  @override
  State<StatefulWidget> createState() => _AnimatedRotationState();

}

class _AnimatedRotationState extends State<AnimatedRotation>
    with TickerProviderStateMixin {
  double lastRotation;
  AnimationController controller;
  Animation<double> turns;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: widget.duration);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (lastRotation == null) {
      lastRotation = widget.turns;
      turns = controller.drive(Tween(begin: lastRotation, end: lastRotation));
    } else if (lastRotation != widget.turns) {
      controller.reset();
      controller.forward();
      turns = controller.drive(Tween(begin: lastRotation, end: widget.turns));
      lastRotation = widget.turns;
    }
    return RotationTransition(turns: turns, child: widget.child,);
  }

}
