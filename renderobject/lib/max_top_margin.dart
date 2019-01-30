
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaxTopMargin extends SingleChildRenderObjectWidget {
  /// create a new widget with a specific [maxTopMargin] and an optional
  /// [onTopMarginChanged] event that is called when the top margin size
  /// changes (i.e. the space for the while widget is not sufficient to
  /// use the foll [maxTopMargin])
  const MaxTopMargin(
      {@required Widget child})
      : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) => _RenderMaxTopMargin();
}

class _RenderMaxTopMargin extends RenderShiftedBox {
  _RenderMaxTopMargin() : super(null);

  @override
  void performLayout() {
    if (child == null) {
      return;
    }

    // here we tell the widget, that it can shrink if necessary
    child.layout(
        constraints.copyWith(
          minHeight: 0.0,
        ),
        // and that we need its size afterwards
        parentUsesSize: true);
    
    
    // parent data is used for positioning
    final BoxParentData childParentData = child.parentData;

    // thats the logic..
    final topSize = (constraints.maxHeight - child.size.height).clamp(0.0, 600.0);
    
    // position the child after top size
    childParentData.offset = Offset(0, topSize);
    size = constraints
        .constrain(Size(child.size.width, topSize + child.size.height));
  }
}
