import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 16.0, 0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF398A9C),

        onPressed: () {
          Navigator.pop(context);
        },
        child: SvgPicture.asset(
          'assets/svg/HOME Button.svg',
          height: 96,
          width: 96,
        ),
      ),
    );
  }
}
