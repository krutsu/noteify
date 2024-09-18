import 'package:flutter/material.dart';
import 'package:noteify/models/note_model.dart';

class Createnote extends StatefulWidget {
  const Createnote({super.key, required this.onNewNoteCreated});

  final Function(Note) onNewNoteCreated;

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
        title: const Text('New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
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
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Your ideas"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titleController.text.isEmpty) {
            return;
          }
          if (bodyController.text.isEmpty) {
            return;
          }

          final note = Note(
            title: titleController.text,
            body: bodyController.text,
          );

          widget.onNewNoteCreated(note);
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
