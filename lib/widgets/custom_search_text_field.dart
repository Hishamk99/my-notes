import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/notes_cubit/notes_cubit.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        hintText: 'Search Notes ...',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<NotesCubit>(context)
                .getSearchedNotes(controller.text);
          },
          icon: const Icon(Icons.search),
          color: Colors.grey,
        ),
        fillColor: Colors.grey.shade800,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
