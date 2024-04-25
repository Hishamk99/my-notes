import 'package:flutter/material.dart';
import 'package:my_notes/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          CustomAppBar()
        ],
      ),
    );
  }
}