import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';

class BarcodeScan extends StatefulWidget {

  @override
  State<BarcodeScan> createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan> {
  String barcode = ("");

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 300,
            height: 120,
            margin: const EdgeInsets.all(5),
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
                  primary: const Color.fromARGB(233, 94, 201, 234),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              child: Image.asset('assets/cod_barraNN.png'),
              onPressed: barcodeScanning,
            )));
            
     }

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
