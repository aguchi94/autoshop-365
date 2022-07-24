import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/widgets/app_barcode_scanner_widget.dart';


/// CustomSizeScannerPage
class CustomSizeScannerPage extends StatefulWidget {
  @override
  _CustomSizeScannerPageState createState() => _CustomSizeScannerPageState();
}

class _CustomSizeScannerPageState extends State<CustomSizeScannerPage> {
  String _code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escanee sus productos"),
      ),
      body:  Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: AppBarcodeScannerWidget.defaultStyle(
                resultCallback: (String code) {
                  setState(() {
                    _code = code;
                  });
                },
                openManual: true,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text("PRODUCTOS"),
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    child: Text(_code),
                  )
              ],)
              )
          ],
        ),
      );
  }
}

