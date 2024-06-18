import 'package:flutter/material.dart';

import '../constantes.dart';

class Colordot extends StatelessWidget {
  const Colordot({
    super.key,
    required this.fillcolor,
    this.isselected = false,
  });
  final Color fillcolor;
  final bool isselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isselected ? Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor),
      ),
    );
  }
}
