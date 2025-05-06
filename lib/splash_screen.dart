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

    // Slide-Animation für das Logo
    _slideController =
        AnimationController(vsync: this, duration: Duration(seconds: 6))
          ..forward().whenComplete(() {
            // Nach der Slide-Animation kurz warten und dann zur Mitte zurückkehren
            Future.delayed(Duration(milliseconds: 500), () {
              _slideController.reverse();
            });
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              // Nach dem Zurückkehren zur Mitte zur nächsten Seite navigieren
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DesicionScreen()),
              );
            }
          });

    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, -1.0), // Startposition oberhalb des Bildschirms
      end: Offset.zero, // Endposition in der Mitte (wird dann zurück animiert)
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeInOut),
    );

    // Farbverlaufsanimation für den Hintergrund
    _colorController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6), // Längere Dauer für den Farbverlauf
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
                  // ignore: deprecated_member_use
                  _colorAnimation.value?.withOpacity(0.8) ?? Color(0xFFAEBD38),
                  Color(0xFFBFDCCF),
                ],
              ),
            ),
            child: Center(
              child: SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(
                    50.0,
                  ), // Optional: etwas Platz um das Logo
                  child: Image.asset('assets/logo.png'), // Dein PNG-Logo
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
