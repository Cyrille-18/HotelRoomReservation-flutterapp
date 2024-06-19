import 'package:flutter/material.dart';

import '../constantes.dart';
import 'colordot.dart';

class listofcolor extends StatelessWidget {
  const listofcolor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Colordot(
            fillcolor: Color(0xFF80989A),
            isselected: true,
          ),
          Colordot(
            fillcolor: Color(0xFFFF5200),
          ),
          Colordot(
            fillcolor: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
