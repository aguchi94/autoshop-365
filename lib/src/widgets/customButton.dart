import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String imageRoute;
  final VoidCallback onPressed;
  const CustomButton({required this.imageRoute, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 290,
            height: 120,
            margin: const EdgeInsets.all(10),
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
                  primary: const Color.fromARGB(233, 177, 215, 226),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              child: Image.asset(imageRoute, width: 170),
              onPressed: onPressed,
            )));
  }
}
