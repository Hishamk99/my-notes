import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_notes/widgets/custom_app_bar.dart';
import 'custom_text_field.dart';
import 'items_list_view.dart';

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
          CustomAppBar(),
          SizedBox(
            height: 16,
          ),
          CustomTextField(),
          SizedBox(
            height: 5,
          ),
          ItemsListView(),
        ],
      ),
    );
  }
}
