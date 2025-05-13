import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/home_button.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/one_back_button.dart';
import 'package:easy_guitalele_app/src/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: BottomNavigationBar(
        iconSize: 32,
        backgroundColor: AppColors.appBar,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(0),
              child: Expanded(child: OneBackButton()),
            ),
            label: ('Back'),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Expanded(child: HomeButton()),
            ),
            label: ('Home'),
          ),
        ],
      ),
    );
  }
}
