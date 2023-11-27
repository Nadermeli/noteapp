import 'package:flutter/material.dart';
import 'package:nader_notes_app/model/note_model.dart';
import 'package:nader_notes_app/screen/widgets/note_view.dart';

class CardNote extends StatelessWidget {
  const CardNote({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Noteview(note: note, index: index)));
      },
      child: Card(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Text(
                note.title,
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                note.body,
                style: const TextStyle(fontSize: 25),
              )
            ])),
      ),
    );
  }
}
