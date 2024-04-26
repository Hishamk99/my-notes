import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_botton.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomAddAndEditTextField(
              text: 'title',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomAddAndEditTextField(
              text: 'content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            CuttomButton(
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
