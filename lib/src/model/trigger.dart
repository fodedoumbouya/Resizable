import 'package:flutter/material.dart';
import 'package:resizable_widget/resizable_widget.dart';

typedef FunctionCallbackInt = void Function(int b);

class Trigger {
  // late final Alignment alignment;
  final ({double top, double left})? position;
  final Widget child;
  final double? height;
  final double? width;
  final DragTriggersEnum dragTriggerType;
  final MouseCursor? cursor;

  Trigger({
    this.position,
    this.height,
    this.width,
    this.cursor,
    required this.child,
    required this.dragTriggerType,
  });
}
