import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/widgets/customButtonMini.dart';

class CargarSaldo extends StatefulWidget {
  const CargarSaldo({ Key? key }) : super(key: key);

  @override
  State<CargarSaldo> createState() => _CargarSaldoState();
}

class _CargarSaldoState extends State<CargarSaldo> {
  @override

  void _pagError() => Navigator.of(context).pushNamed('/error404');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: const Color.fromARGB(233, 94, 201, 234),
        centerTitle: true,
        backgroundColor: Color.fromARGB(233, 94, 201, 234),
        title: const Text("Cargar Saldo"),
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
            Container(
            width: 200,
            height: 100,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(233, 94, 201, 234),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 4),
                      blurRadius: 6)
                ]),
              child: const ListTile(
                title: Text("Saldo Actual",textAlign: TextAlign.center, style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                subtitle: Text("\$500,00",textAlign: TextAlign.center, style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonMini(
                  imageRoute: 'assets/ingresar_dinero.png', 
                  onPressed: ()=>{},
                  ),
                const SizedBox(width: 20),
                CustomButtonMini(
                  imageRoute: 'assets/mp_logo.png', 
                  onPressed: ()=>{},
                  ),
              ],
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                child: Text("Ir al carrito"),
                onPressed: ()=> _pagError(),
              ),
            )
          ],
        ),
      ),
    );
  }
}