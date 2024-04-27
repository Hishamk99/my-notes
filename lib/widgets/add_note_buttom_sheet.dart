import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
        if (state is AddNoteFailure) {
          debugPrint(state.errorMessage);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          // disable TextFormField while true
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: const AddNoteForm(),
          ),
        );
      },
    );
  }
}
