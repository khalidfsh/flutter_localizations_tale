import 'package:flutter/material.dart';

class FlatRoundedCard extends StatelessWidget {
  const FlatRoundedCard({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 2, 5, 2),

      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color.fromRGBO(229, 229, 229, 0.5)),
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
