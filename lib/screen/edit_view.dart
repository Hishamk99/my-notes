import 'package:flutter/material.dart';
import 'package:my_notes/model/note_model.dart';
import 'package:my_notes/widgets/edit_view_body.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  static String id = 'Edit';

  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return EditViewBody(
      note: note,
    );
  }
}
