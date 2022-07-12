import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  final String info;
  final String imageRoute;
  const HelpButton({ required this.info ,required this.imageRoute});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 4),
                      blurRadius: 6)
                ]),
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(233, 177, 215, 226),
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
                              color: Color.fromARGB(233, 175, 224, 239),
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
              size: 30,
              color: Colors.black54,
            ),
      )
    );
  }
}
