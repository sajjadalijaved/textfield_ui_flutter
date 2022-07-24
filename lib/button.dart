import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        child: child,
        decoration: const BoxDecoration(
            color: Colors.deepOrange,
            boxShadow: [
              BoxShadow(
                  offset: Offset(-2, -2),
                  color: Colors.black38,
                  blurRadius: 5,
                  spreadRadius: 1),
              BoxShadow(
                  offset: Offset(2, 2),
                  color: Colors.black38,
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}
