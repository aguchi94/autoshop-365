import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({ Key? key }) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: const Color.fromARGB(233, 94, 201, 234),
        centerTitle: true,
        backgroundColor: Color.fromARGB(233, 94, 201, 234),
        title: Text("Datos del Usuario"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(233, 94, 201, 234),
              Colors.black26,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white38,
                child: Column(
                  children: [
                    //Direccion
                    Row(
                      children: [
                        SizedBox(
                          width: 50
                        ),
                        Icon(Icons.house,
                        size: 50,
                        color: Colors.blue,
                        ),
                        SizedBox(
                          width: 50
                        ),
                        Text("Haras Maria Victoria"),
                      ],
                    ),
                    SizedBox(
                      height: 10
                    ),
                    //Nombre
                    Row(
                      children: [
                        SizedBox(
                          width: 50
                        ),
                        Icon(Icons.person,
                        size: 50,
                        color: Colors.blue,
                        ),
                        SizedBox(
                          width: 50
                        ),
                        Text("Agustin Sanchez"),
                      ],
                    ),
                    SizedBox(
                      height: 10
                    ),
                    //Correo
                    Row(
                      children: [
                        SizedBox(
                          width: 50
                        ),
                        Icon(Icons.mail,
                        size: 50,
                        color: Colors.blue,
                        ),
                        SizedBox(
                          width: 50
                        ),
                        Text("agudemoreno2@gmail.com"),
                      ],
                    ),
                    SizedBox(
                      height: 10
                    ),
                    //Saldo
                    Row(
                      children: [
                        SizedBox(
                          width: 50
                        ),
                        Icon(Icons.attach_money,
                        size: 50,
                        color: Colors.blue,
                        ),
                        SizedBox(
                          width: 50
                        ),
                        Text("\$500,00"),
                      ],
                    ),
                    SizedBox(
                      height: 10
                    ),
                    //Contraseña
                    Row(
                      children: [
                        SizedBox(
                          width: 50
                        ),
                        Icon(Icons.key,
                        size: 50,
                        color: Colors.blue,
                        ),
                        SizedBox(
                          width: 50
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green
                          ),
                          child: Text("Cambiar Contraseña"),
                          onPressed: ()=>{},
                        ),
                      ],
                    ),
                  ],
                )
              ),
            )
          ]
        )
      )
    );
  }
}
