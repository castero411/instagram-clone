import 'package:flutter/material.dart';

class XIconButton extends StatefulWidget {
  const XIconButton({
    super.key,
    required this.onTap,
    required this.activeIcon,
    this.pressedIcon = Icons.warning,
    this.isPressed = false,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  });
  final Function() onTap;
  final IconData activeIcon;
  final IconData pressedIcon;
  final bool isPressed;
  final double paddingLeft;
  final double paddingRight;

  @override
  State<XIconButton> createState() => _XIconButtonState();
}

class _XIconButtonState extends State<XIconButton> {
  bool pressed = false;
  @override
  void initState() {
    pressed = widget.isPressed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.paddingLeft,
        right: widget.paddingRight,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            pressed = !pressed;
          });
          widget.onTap;
        },

        onTapCancel: () {
          setState(() {
            pressed = false;
          });
        },
        child: Icon(pressed ? widget.pressedIcon : widget.activeIcon, size: 30),
      ),
    );
  }
}
