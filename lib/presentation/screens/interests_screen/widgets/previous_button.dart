import "package:flutter/material.dart";

class PreviousButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const PreviousButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsetsDirectional.fromSTEB(40, 15, 40, 15),
                side: BorderSide(
                    color: Color.fromARGB(255, 0, 83, 145), width: 1.50)),
            onPressed: () {},
            child: child));
  }
}