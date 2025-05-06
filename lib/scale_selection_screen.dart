import 'package:easy_guitalele_app/desicions_box.dart';
import 'package:easy_guitalele_app/one_back_button.dart';
import 'package:flutter/material.dart';

class ScaleSelectionScreen extends StatefulWidget {
  const ScaleSelectionScreen({super.key});

  @override
  State<ScaleSelectionScreen> createState() => _ScaleSelectionScreenState();
}

class _ScaleSelectionScreenState extends State<ScaleSelectionScreen> {
  get scales => [
    'C Major',
    'G Major',
    'D Major',
    'A Major',
    'E Major',
    'B Major',
    'F# Major',
    'Db Major',
    'Ab Major',
    'Eb Major',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF505160),
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: const Color(0xFF505160),
        title: Image.asset('assets/logo/logo.png', height: 200, width: 200),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const OneBackButton(),
      body: SafeArea(
        child: Column(
          children: [
            DesicionsBox(
              color: Color(0xFFbcbabe),
              selectionText: 'Scales',
              imageIcon: ImageIcon(AssetImage('assets/icons/ClefIcon.png')),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: scales.length,
                itemBuilder: (context, index) {
                  final String scale = scales[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: const Color(0xFFBCBABE),
                      child: ListTile(
                        title: Text(scale),
                        leading: const Icon(Icons.music_note),
                        onTap: () {
                          // Handle scale selection
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
