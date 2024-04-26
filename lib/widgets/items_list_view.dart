import 'package:flutter/material.dart';

import 'note_item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const NoteItem();
        },
      ),
    );
  }
}
