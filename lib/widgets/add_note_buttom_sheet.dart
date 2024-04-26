import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_botton.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAddAndEditTextField(
            text: 'title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomAddAndEditTextField(
            text: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          CuttomButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
