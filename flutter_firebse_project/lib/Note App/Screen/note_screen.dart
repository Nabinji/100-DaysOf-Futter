import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Model/note_model.dart';

class NoteScreen extends StatefulWidget {
  final Note note;
  const NoteScreen({super.key, required this.note});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  late Note note;
  String titleString = '';
  String noteString = '';
  late int color;

  final CollectionReference myNotes =
      FirebaseFirestore.instance.collection('notes');

  late TextEditingController titleController;
  late TextEditingController noteController;

  @override
  void initState() {
    super.initState();
    note = widget.note;
    titleString = note.title;
    noteString = note.note;
    color = note.color == 0xFFFFFFFF ? generateRandomLightColor() : note.color;
    titleController = TextEditingController(text: titleString);
    noteController = TextEditingController(text: noteString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  // if user comes from create note button (in our case floation action button)
                  // then display the add note text otherwise edit not text
                  Text(
                    note.id.isEmpty ? 'Add note' : 'Edit note',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            saveNotes();
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                        ),
                        if (note.id.isNotEmpty)
                          // if user comes from create note button (in our case floation action button)
                          // only display the save note button otehrwise display the both save and delete button
                          IconButton(
                            onPressed: () {
                              myNotes.doc(note.id).delete();
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Note Title",
                ),
                onChanged: (value) {
                  titleString = value;
                },
              ),
              Expanded(
                child: TextField(
                  controller: noteController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Note Content",
                  ),
                  onChanged: (value) {
                    noteString = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int generateRandomLightColor() {
    Random random = Random();
    int red = 200 + random.nextInt(56); // 200 to 255
    int green = 200 + random.nextInt(56); // 200 to 255
    int blue = 200 + random.nextInt(56); // 200 to 255
    return (0xFF << 24) | (red << 16) | (green << 8) | blue;
  }

  // for save and update the notes
  void saveNotes() async {
    DateTime now = DateTime.now();
    if (note.id.isEmpty) {
      await myNotes.add({
        'title': titleString,
        'note': noteString,
        'color': color,
        'createdAt': now,
      });
    } else {
      await myNotes.doc(note.id).update({
        'title': titleString,
        'note': noteString,
        'color': color,
        'updatedAt': now,
      });
    }
  }
}
