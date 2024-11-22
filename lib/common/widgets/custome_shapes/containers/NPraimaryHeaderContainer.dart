import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nest_heven/common/widgets/custome_shapes/curved_edges/curved_edge_widgets.dart';
import 'package:nest_heven/utils/constants/colors.dart';

class NPrimaryHeaderContainer extends StatelessWidget {
  const NPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return NCurvedWidget(
      child: Container(
        color: NColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // Positioned(
              //   right: 10,
              //   child: Lottie.asset("assets/videos/cliperback.json"),
              // ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
