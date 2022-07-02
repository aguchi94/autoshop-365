import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';

class barCodePage extends StatefulWidget {
  const barCodePage({ Key? key }) : super(key: key);

  @override
  State<barCodePage> createState() => _barCodePageState();
}

class _barCodePageState extends State<barCodePage> {

  String barcode = ("");


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        AlertDialog(
          title: const Text("Escanear"),
          content: Text(barcode),
          actions: [
            FlatButton(
              child: Text("Ok"),
              onPressed: barcodeScanning,
            ), 
            FlatButton(
              child: Text("Cancelar"),
              onPressed: (){},
            ),
          ]
         )
      ]
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