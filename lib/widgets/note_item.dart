import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/notes_cubit/notes_cubit.dart';

import 'package:my_notes/model/note_model.dart';
import 'package:my_notes/screen/edit_view.dart';

import 'custom_icon_button.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6, bottom: 6),
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                note.desc,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              trailing: CustomIconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).getAllNotes();
                },
                icon: Icons.delete,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomIconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EditPage.id);
                    },
                    icon: Icons.edit,
                  ),
                  Text(
                    note.date,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
