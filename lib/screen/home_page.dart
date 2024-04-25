import 'package:flutter/material.dart';
import 'package:my_notes/widgets/notes_view_body.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NotesViewBody(),
      ),
    );
  }
}
