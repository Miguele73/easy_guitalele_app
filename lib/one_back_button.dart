import 'package:flutter/material.dart';

class OneBackButton extends StatelessWidget {
  const OneBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF398A9C),

      onPressed: null,
      child: Icon(Icons.reply_outlined, size: 48, color: Colors.white),
    );
  }
}
