import 'package:flutter/material.dart';

class DesicionsBox extends StatelessWidget {
  final Color color;
  final String selectionText;
  final ImageIcon imageIcon;
  const DesicionsBox({
    super.key,
    required this.color,
    required this.selectionText,
    required this.imageIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color,
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),

        width: 300,
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: imageIcon),
            Text(
              selectionText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
