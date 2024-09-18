import 'package:flutter/material.dart';
import 'package:noteify/models/note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(note.title,
                  style: const TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 26, 3, 30))),
              const SizedBox(
                height: 10,
              ),
              Text(
                note.body,
                style: const TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 7, 38, 53)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
