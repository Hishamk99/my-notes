import 'package:flutter/material.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_app_bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              const CustomAppBar(
                appTitle: 'Edit Note',
                icon: Icons.check,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomAddAndEditTextFormField(
                onSaved: (val) {},
                text: 'title',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomAddAndEditTextFormField(
                onSaved: (val) {},
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
