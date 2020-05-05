import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  Btn({
    this.onPressed,
    this.icon,
    this.size = 64,
    this.background = Colors.black54,
  });

  final void Function() onPressed;
  final IconData icon;
  final double size;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: background,
      ),
    );
  }
}
