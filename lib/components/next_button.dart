import "package:flutter/material.dart";

class NextButton extends StatelessWidget {
  final void  Function()? onTap;
  final Widget  child;
  const NextButton({
    super.key, 
    required this.onTap,
    required this.child,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 83, 145),
          borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.fromLTRB(56, 15, 56, 18),
          
        child: child,
      ),
    );
  }
}