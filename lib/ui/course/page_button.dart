import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart';

class MPageButton extends StatelessWidget {
  const MPageButton({
    super.key,
    this.right,
    this.left,
    required this.onPressed,
    required this.title,
    this.isOutlined = false,
  });

  final String title;
  final double? right;
  final double? left;
  final bool isOutlined;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      left: left,
      bottom: MSizes.paddingAll,
      child: SizedBox(
        width: 175,
        child: isOutlined
            ? OutlinedButton(onPressed: onPressed, child: Text(title))
            : ElevatedButton(onPressed: onPressed, child: Text(title)),
      ),
    );
  }
}
