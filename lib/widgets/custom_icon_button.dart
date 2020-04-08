import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final Function() onTap;

  const CustomIconButton({Key key, this.radius, this.iconData, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
      child: IconButton(
        icon: Icon(iconData),
        onPressed: onTap,
      ),
    );
  }
}
