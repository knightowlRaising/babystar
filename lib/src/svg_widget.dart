// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class SVGWidget extends StatelessWidget {
  const SVGWidget({
    Key? key,
    required this.path,
    this.semanticsLabel = '',
    this.height = 20,
    this.width = 20,
    this.color = Colors.black,
    this.enableColor = true,
    this.onTap,
    this.padding,
    this.child,
    this.fromNetwork = false,
  }) : super(key: key);
  final String path;
  final String semanticsLabel;
  final Color color;
  final double height;
  final double width;
  final bool enableColor;
  final VoidCallback? onTap;
  final bool fromNetwork;
  final Widget? child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height,
            width: width,
            padding: padding ?? const EdgeInsets.all(0),
            child: fromNetwork
                ? SvgPicture.network(
                    path,
                    color: enableColor ? color : null,
                    semanticsLabel: semanticsLabel,
                  )
                : SvgPicture.asset(
                    path,
                    color: enableColor ? color : null,
                    semanticsLabel: semanticsLabel,
                    fit: BoxFit.contain,
                  ),
          ),
          if (child != null) child!
        ],
      ),
    );
  }
}
