import 'package:flutter/material.dart';
import 'package:my_notes/screen/edit_view.dart';
import 'package:my_notes/screen/home_page.dart';

void main() {
  runApp(const MyNote());
}

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        NotesPage.id: (context) => const NotesPage(),
        EditPage.id: (context) => const EditPage(),
      },
      initialRoute: NotesPage.id,
    );
  }
}
