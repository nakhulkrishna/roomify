import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/custome_shapes/curved_edges/curved_edges.dart';

class NCurvedWidget extends StatelessWidget {
  const NCurvedWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: NcustomeCliper(), child: child);
  }
}
