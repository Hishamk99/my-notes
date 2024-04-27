import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/model/note_model.dart';

import 'note_item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
