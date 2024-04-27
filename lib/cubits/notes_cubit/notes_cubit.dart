import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notesList = noteBox.values.toList();

      emit(NotesSuccess(notes: notesList));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
