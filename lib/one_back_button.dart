import 'package:flutter/material.dart';

class OneBackButton extends StatelessWidget {
  const OneBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF398A9C),

        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset('assets/icons/BACK Button.png'),
      ),
    );
  }
}
