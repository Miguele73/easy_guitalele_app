import 'package:flutter/material.dart';

class OneBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? iconSize;

  const OneBackButton({super.key, this.onPressed, this.iconSize = 96.0});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:
          onPressed ??
          () {
            Navigator.of(context).maybePop();
          },
      icon: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Image.asset('assets/icons/ObB.png'),
      ),
    );
  }
}
