import 'package:flutter/material.dart';
import 'package:noteify/models/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Note view"), actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("you sure about that?"),
                        content: Text("Note ${note.title} will be deleted."),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('DELETE'),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('CANCEL'))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.delete))
        ]),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  note.body,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            )));
  }
}
