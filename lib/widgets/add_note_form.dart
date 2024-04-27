import 'package:flutter/material.dart';

import 'custom_add_edit_text_field.dart';
import 'custom_botton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, desc;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomAddAndEditTextFormField(
              onSaved: (val) {
                title = val;
              },
              text: 'title',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAddAndEditTextFormField(
              onSaved: (val) {
                desc = val;
              },
              text: 'content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            CuttomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pop(context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
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
