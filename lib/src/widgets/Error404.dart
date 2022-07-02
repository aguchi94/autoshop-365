import 'package:flutter/material.dart';


class Error404page extends StatefulWidget {
  const Error404page({ Key? key }) : super(key: key);

  @override
  State<Error404page> createState() => _Error404pageState();
}

class _Error404pageState extends State<Error404page> {
  
  void _volverMenu() => Navigator.of(context).pushReplacementNamed('/home');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Colors.black12,
              Color.fromARGB(233, 94, 201, 234),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, 
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/errorapp.png', width: 170),
            const ListTile(
            title: Text("LO SIENTO!", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center),
            subtitle: Text("Este sitio se encuentra en desarrollo", style: TextStyle(color: Colors.black54, fontSize: 20), textAlign: TextAlign.center),
            ),
            
            const SizedBox(height: 20),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
                primary: const Color.fromARGB(233, 94, 201, 234)
                ),
              onPressed: () => _volverMenu(), 
              child: const Text("Volver al Menú Principal", style: TextStyle(color: Colors.black54),),
              )
          ],
        )
      ),
    );
  }
}