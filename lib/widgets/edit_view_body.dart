import 'package:flutter/material.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_app_bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              CustomAppBar(
                appTitle: 'Edit Note',
                icon: Icons.check,
              ),
              SizedBox(
                height: 24,
              ),
              CustomAddAndEditTextField(
                text: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomAddAndEditTextField(
                text: 'content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
