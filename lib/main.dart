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
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
