import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;

  getAllNotes() {
    //try {

    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notesList = noteBox.values.toList();

    emit(NotesSuccess());
    // } catch (e) {
    //  emit(NotesFailure(errorMessage: e.toString()));
    // }
  }

  getReversedNotes() {
    notesList = notesList!.reversed.toList();
    emit(NotesSuccess());
  }
}
