import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon,
    required this.appTitle,
    required this.onPressed,
  });
  final IconData icon;
  final String appTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appTitle,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black.withOpacity(.3),
          ),
          child: Center(
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
