import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/widgets/custom_app_bar.dart';
import 'custom_search_text_field.dart';
import 'items_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          CustomAppBar(
            onPressed: () {
              BlocProvider.of<NotesCubit>(context).getReversedNotes();
            },
            appTitle: 'Notes',
            icon: Icons.sort,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(),
          const SizedBox(
            height: 5,
          ),
          const ItemsListView(),
        ],
      ),
    );
  }
}
