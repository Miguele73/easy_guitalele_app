import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/desicions_box.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/one_back_button.dart';
import 'package:flutter/material.dart';

class ChordSelectionScreen extends StatefulWidget {
  const ChordSelectionScreen({super.key});

  @override
  State<ChordSelectionScreen> createState() => _ChordSelectionScreenState();
}

class _ChordSelectionScreenState extends State<ChordSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF505160),
      appBar: AppBar(
        leading: OneBackButton(),
        toolbarHeight: 200,
        backgroundColor: const Color(0xFF505160),
        title: Image.asset('assets/logo/logo.png', height: 200, width: 200),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: const OneBackButton(),
      body: SafeArea(
        child: Column(
          children: [
            DesicionsBox(
              color: Color(0xFFDE7A22),
              selectionText: 'Chords',
              imageIcon: ImageIcon(AssetImage('assets/icons/ChordIcon.png')),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: const Color(0xFFBCBABE),
                      child: ListTile(
                        title: Text('Chord ${index + 1}'),
                        leading: const Icon(Icons.music_note),
                        onTap: () {
                          // Handle chord selection
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
