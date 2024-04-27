import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/model/note_model.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, desc;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              CustomAppBar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.desc = desc ?? widget.note.desc;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).getAllNotes();
                  Navigator.pop(context);
                },
                appTitle: 'Edit Note',
                icon: Icons.check,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomAddAndEditTextFormField(
                onChanged: (val) {
                  title = val;
                },
                text: 'title',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomAddAndEditTextFormField(
                onChanged: (val) {
                  desc = val;
                },
                text: 'content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
