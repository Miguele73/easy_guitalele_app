import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(112.0, 8.0, 32.0, 0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF398A9C),

        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset('assets/icons/HOME ButtonHomeButton.png'),
      ),
    );
  }
}
