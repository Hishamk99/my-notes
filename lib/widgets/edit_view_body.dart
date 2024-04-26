import 'package:flutter/material.dart';

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
                icon: Icons.sort,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
