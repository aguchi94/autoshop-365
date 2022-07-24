import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  final String info;
  final String imageRoute;
  const HelpButton({ required this.info ,required this.imageRoute});
  @override
  Widget build(BuildContext context) {
    
    return Container(
            width: 80,
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
                  primary: const Color.fromARGB(220, 220, 220, 220),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onPressed: () {
                    showDialog(
                      barrierColor: Colors.white54,
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: Container(
                            width: 200,
                            height: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(220, 220, 220, 220),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(2, 4),
                                  blurRadius: 6)
                                  ]),
                            child: Image.asset(imageRoute),
                          ),
                          content: Text(info),
                          actions: [
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green
                                ),
                                child: const Text("Entendido"),
                                onPressed: ()=>{
                                  Navigator.of(context).pop()
                                },
                              ),
                            )
                          ],
                          )
                          );
                          },
              child: const Icon(Icons.question_mark,
              size: 50,
              color: Color.fromARGB(223, 10, 80, 44),
            ),
      )
    );
  }
}
