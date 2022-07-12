import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

 @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

void error404() => Navigator.of(context).pushNamed('/error404');

void iniciarSesion() => Navigator.of(context).pushReplacementNamed('/home');



  
  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white60,
                  Colors.white30,
                  Color.fromARGB(233, 128, 212, 235),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
        child: ListView(
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Image.asset('assets/logo365.png', width: 170,)),
            ),


//Caja de texto Login
            
            Container(
                margin: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text("Bienvenido!", style: TextStyle( fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        subtitle: Text("Iniciar Sesión", style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Numero de lote (uf)",
                          hintText: "Introduzca su usuario",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0)
                          )
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Contraseña",
                          hintText: "Introduzca su contraseña",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0)
                          )
                        ),
                      ),
                      
                      const SizedBox(height: 20),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
//Boton Registrarse
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            elevation: 5.0,
                            primary:const Color.fromARGB(233, 94, 201, 234),
                          ),
                          child: const Text("Iniciar Sesión", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),                          
                          onPressed: () => iniciarSesion(),
                        ),

                        const SizedBox(height: 20),

 //Boton Iniciar Sesion
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:const EdgeInsets.all(15),
                              elevation: 5.0,
                              primary: const Color.fromARGB(242, 246, 110, 73),
                            ),
                            child: const Text("Registrarse", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            onPressed: () => error404(),
                          ),
                      ],
                    )
                    
                    ],
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
