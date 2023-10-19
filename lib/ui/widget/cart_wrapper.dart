import 'package:flutter/material.dart';


class CartWrapper extends StatelessWidget {
  const CartWrapper({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Container(
      height: 180,
      width: 173,
      decoration: BoxDecoration(
        color: brightness == Brightness.light ? Colors.grey[200] : Color(0xFF141C21),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      // child: child,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
          ),
      );
  }
}

