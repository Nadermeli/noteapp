import 'package:flutter/material.dart';
import 'package:nader_notes_app/model/note_model.dart';

class Createnote extends StatefulWidget {
  const Createnote({super.key, required this.onNewNotedCreated});

  final Function(Note) onNewNotedCreated;

  @override
  State<Createnote> createState() => _CreatenoteState();
}

class _CreatenoteState extends State<Createnote> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New note'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: titleController,
            style: const TextStyle(fontSize: 28),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Title"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: bodyController,
            style: const TextStyle(fontSize: 20),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Body"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titleController.text.isEmpty) {
            return;
          }
          if (bodyController.text.isEmpty) {
            return;
          }
          final note =
              Note(title: titleController.text, body: bodyController.text);
          widget.onNewNotedCreated(note);
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
