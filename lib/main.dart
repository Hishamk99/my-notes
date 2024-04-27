import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/model/note_model.dart';
import 'package:my_notes/screen/edit_view.dart';
import 'package:my_notes/screen/home_page.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyNote());
}

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
