import 'package:flutter/material.dart';
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
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        NotesPage.id: (context) => const NotesPage(),
      },
      initialRoute: NotesPage.id,
    );
  }
}
