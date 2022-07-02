import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';
import 'package:aguchi_prueba1/src/pages/barcode_scan.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

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
  void _pagBarCode() => Navigator.of(context).pushNamed('/barcode');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Menú Principal",style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
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


//SALDO
          Center(
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(233, 94, 201, 234),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6,
                  )]),
              child: const ListTile(
                  title: Text("Hola Agustin!", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25 , color: Colors.black87),),
                  subtitle: Text("\$500,00", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25 , color: Colors.black54)),
                ),
            ),
          ),

          const SizedBox(height: 5),

//BOTON ESCANEAR
          Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/cod_barraNN.png', width: 170),
                onPressed: ()=> barcodeScanning(),
                  ),
              )
          ),

           
            const SizedBox(height: 5),

//BOTON COMPRAR
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/carrito_vacioNN.png', width: 170),
                onPressed: ()=>_pagError(),
                )
              
            )
          ),

           
            const SizedBox(height: 5),

//CARGAR DINERO          
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/billeteraNN.png', width: 170),
                onPressed: ()=>_pagError(),
                )
              
            )
          ),

           
            const SizedBox(height: 5),

//LISTA DE PRODUCTOS
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/listadoNN.png', width: 170),
                onPressed: ()=>_pagError(),
              )
            )
          ),

           
            const SizedBox(height: 5),

//ABRIR PUERTA
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/puerta_abiertaNN.png', width: 170),
                onPressed: ()=>_pagError(),
              )
            )
          ),

           
            const SizedBox(height: 5),

//USUARIO
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/usuarioNN.png', width: 170),
                onPressed: ()=>_pagError(),
              )
            )
          ),

           
            const SizedBox(height: 10),


//CERRAR SESION
            Center(
            child: Container(
              width: 300,
              height: 120,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black45,
                    offset: Offset(2, 4),
                    blurRadius: 6)]
                ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                child: Image.asset('assets/boton_offNN.png', width: 170),
                onPressed: () {
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: const Text("Cerrar Sesion"),
                      content: const Text("¿Desea cerrar sesion?"),
                      actions: [
                        FlatButton(
                          child: Text("Ok"),
                          onPressed: () => _cerrarSesion(),
                        ), 
                        FlatButton(
                          child: Text("Cancelar"),
                          onPressed: () {},
                        ),
                      ]
                    )
                  );
                }
              )
            )
          ),
          


          ]
        ),
      ),
    );
  }

 //FUNCION ESCANEAR
   Future barcodeScanning() async {
    try {
      ScanResult qrScanResult = await BarcodeScanner.scan();
      String qrResult = qrScanResult.rawContent;
      setState(() => barcode = qrResult);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          barcode = "No camera permission!"; 
        });
      } else {
        setState(() => barcode = "Unknown error: $e");
      }
    } on FormatException {
      setState(() => barcode = "Nothing captured.");
    } catch (e) {
      setState(() => barcode = "Unknown error: $e");
    }
  }
}