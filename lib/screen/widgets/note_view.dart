import 'package:flutter/material.dart';
import 'package:nader_notes_app/model/note_model.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key, required this.note, required this.index});

  final Note note;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              note.title,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              note.body,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
