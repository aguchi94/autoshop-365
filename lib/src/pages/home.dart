import 'package:aguchi_prueba1/src/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/pages/barcode_scan.dart';
import 'package:aguchi_prueba1/src/widgets/customButton.dart';
import 'package:aguchi_prueba1/src/widgets/helpButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String barcode = ("");

  @override
  void initState() {
    super.initState();
  }

  void _cerrarSesion() => Navigator.of(context).pushReplacementNamed('/login');
  void _pagError() => Navigator.of(context).pushNamed('/error404');
  void _cargarSaldo() => Navigator.of(context).pushNamed('/cargar');
  void _userPage() => Navigator.of(context).pushNamed('/user');
  void _cart() => Navigator.of(context).pushNamed('/cart');

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        child: ListView(
          children: <Widget>[

//SALDO
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      imageRoute: 'assets/usuarioNN.png',
                      onPressed: () => _userPage()
                      ),
                  const HelpButton(
                  info: "Presione aquí para ver la informacion del usuario",
                  imageRoute: 'assets/usuarioNN.png',
                 )
                ]
              ),
              const SizedBox(height: 5),

//BOTON ESCANEAR
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BarcodeScan(),

                  const HelpButton(
                  info: "Presione aquí para iniciar una compra",
                  imageRoute: 'assets/cod_barraNN.png',
                 )
                ]
              ),
              const SizedBox(height: 5),

//BOTON CARRITO
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      imageRoute: 'assets/carrito_vacioNN.png',
                      onPressed: () => _cart()
                      ),
                  const HelpButton(
                  info: "Presione aquí para ver la lista de productos en el carrito",
                  imageRoute: 'assets/carrito_vacioNN.png',
                 )
                ]
              ),
              const SizedBox(height: 5),

//CARGAR DINERO
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      imageRoute: 'assets/billeteraNN.png',
                      onPressed: () => _cargarSaldo()
                      ),
                  const HelpButton(
                  info: "Presione aquí para cargar dinero a su cuenta",
                  imageRoute: 'assets/billeteraNN.png',
                 )
                ]
              ),
              const SizedBox(height: 5),

//LISTA DE PRODUCTOS
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      imageRoute: 'assets/listadoNN.png',
                      onPressed: () => _pagError()
                      ),
                  const HelpButton(
                  info: "Presione aquí para ver los productos en stock y sus precios",
                  imageRoute: 'assets/listadoNN.png',
                 )
                ]
              ),
              const SizedBox(height: 5),

//ABRIR PUERTA
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      imageRoute: 'assets/puerta_abiertaNN.png',
                      onPressed: () => _pagError()
                      ),
                  const HelpButton(
                    info: "Presione aquí para abrir la puerta de Autoshop",
                    imageRoute: 'assets/puerta_abiertaNN.png',
                  )
                ]
              ),
              const SizedBox(height: 5),

//CERRAR SESION
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  imageRoute: 'assets/boton_offNN.png',
                  onPressed: () {
                    showDialog(
                      barrierColor: const Color.fromARGB(233, 175, 224, 239),
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text("Cerrar Sesion"),
                                content: const Text("¿Desea cerrar sesion?"),
                                actions: [ 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        TextButton(
                                          child: const Text("Ok"),
                                          onPressed: () => _cerrarSesion(),
                                        ),
                                        TextButton(
                                          child: const Text("Cancelar"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                ]));
                  }),
                 const HelpButton(
                  info: "Presione aqui para cerrar sesión",
                  imageRoute: 'assets/boton_offNN.png',
                 ) 
            ],
          )
        ]),
      );
  }
}


