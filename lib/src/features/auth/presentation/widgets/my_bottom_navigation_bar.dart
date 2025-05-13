import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: BottomNavigationBar(
        iconSize: 32,
        backgroundColor: const Color(0xFF5F968E),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(0),
              child: Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color(0xFFF4CC70),
                  ),
                ),
              ),
            ),
            label: ('Back'),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.home_outlined, color: Color(0xFFF4CC70)),
                ),
              ),
            ),
            label: ('Home'),
          ),
        ],
      ),
    );
  }
}
