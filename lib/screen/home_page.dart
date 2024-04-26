import 'package:flutter/material.dart';
import 'package:my_notes/widgets/custom_add_edit_text_field.dart';
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

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAddAndEditTextField(
            text: 'title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomAddAndEditTextField(
            text: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
