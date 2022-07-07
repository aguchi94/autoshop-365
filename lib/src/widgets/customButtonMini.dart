import 'package:flutter/material.dart';

class CustomButtonMini extends StatelessWidget {
  final String imageRoute;
  final VoidCallback onPressed;
  const CustomButtonMini({required this.imageRoute, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 150,
            height: 150,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 4),
                      blurRadius: 6)
                ]),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              child: Image.asset(imageRoute, width: 170),
              onPressed: onPressed,
            )));
  }
}
