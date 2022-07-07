import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/pages/barcode_scan.dart';
import 'package:aguchi_prueba1/src/widgets/customButton.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(children: <Widget>[
//SALDO
          CustomButton(
              imageRoute: 'assets/usuarioNN.png',
              onPressed: () => _userPage()
              ),
          const SizedBox(height: 5),

//BOTON ESCANEAR
           BarcodeScan(
           ),
          const SizedBox(height: 5),

//BOTON COMPRAR
          CustomButton(
              imageRoute: 'assets/carrito_vacioNN.png',
              onPressed: () => _pagError()
              ),
          const SizedBox(height: 5),

//CARGAR DINERO
          CustomButton(
              imageRoute: 'assets/billeteraNN.png',
              onPressed: () => _cargarSaldo()
              ),
          const SizedBox(height: 5),

//LISTA DE PRODUCTOS
          CustomButton(
              imageRoute: 'assets/listadoNN.png', onPressed: () => _pagError()),
          const SizedBox(height: 5),

//ABRIR PUERTA
          CustomButton(
              imageRoute: 'assets/puerta_abiertaNN.png',
              onPressed: () => _pagError()
              ),
          const SizedBox(height: 5),

//USUARIO
          CustomButton(
              imageRoute: 'assets/usuarioNN.png', onPressed: () => _pagError()
              ),
          const SizedBox(height: 10),

//CERRAR SESION
          CustomButton(
              imageRoute: 'assets/boton_offNN.png',
              onPressed: () {
                showDialog(
                  barrierColor: Color.fromARGB(233, 175, 224, 239),
                    context: context,
                    builder: (context) => AlertDialog(
                            title: const Text("Cerrar Sesion"),
                            content: const Text("¿Desea cerrar sesion?"),
                            actions: [
                              TextButton(
                                child: Text("Ok"),
                                onPressed: () => _cerrarSesion(),
                              ),
                              TextButton(
                                child: Text("Cancelar"),
                                onPressed: () {},
                              ),
                            ]));
              })
        ]),
      ),
    );
  }
}
