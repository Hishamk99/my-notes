import 'package:flutter/material.dart';
import 'package:my_notes/screen/edit_view.dart';

import 'custom_icon_button.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                'hisham kamel',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              trailing: CustomIconButton(
                onPressed: () {},
                icon: Icons.delete,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomIconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EditPage.id);
                    },
                    icon: Icons.edit,
                  ),
                  const Text(
                    'april 26 , 2024',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
