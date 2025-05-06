// ignore_for_file: library_private_types_in_public_api

import 'package:easy_guitalele_app/desicion_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;
  late AnimationController _colorController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _slideController =
        AnimationController(vsync: this, duration: Duration(seconds: 6))
          ..forward().whenComplete(() {
            Future.delayed(Duration(milliseconds: 500), () {
              _slideController.reverse();
            });
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DesicionScreen()),
              );
            }
          });

    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, -1.0),
      end: Offset.fromDirection(0.7),
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeInOut),
    );

    _colorController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Color(0xFF68829E),
      end: Color(0xFFAEBD38),
    ).animate(
      CurvedAnimation(parent: _colorController, curve: Curves.easeInOut),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _colorAnimation = ColorTween(
          begin: Color(0xFFAEBD38),
          end: Color(0xFFBFDCCF),
        ).animate(_colorController);
      } else if (status == AnimationStatus.dismissed) {
        _colorAnimation = ColorTween(
          begin: Color(0xFFBFDCCF),
          end: Color(0xFF68829E),
        ).animate(_colorController);
      }
    });
  }

  @override
  void dispose() {
    _slideController.dispose();
    _colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  _colorAnimation.value ?? Color(0xFF68829E),

                  _colorAnimation.value ?? Color(0xFFAEBD38),
                  Color(0xFFBFDCCF),
                ],
              ),
            ),
            child: Center(
              child: SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('assets/logo/logo.png'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
