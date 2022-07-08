import 'package:aguchi_prueba1/src/widgets/customButton.dart';
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
    return CustomButton(
      imageRoute: 'assets/cod_barraNN.png', 
      onPressed: barcodeScanning
      );
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

  