import 'package:flutter/material.dart';
import 'package:my_notes/widgets/add_note_buttom_sheet.dart';
import 'package:my_notes/widgets/notes_view_body.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              },
            );
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
