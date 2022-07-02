import 'package:aguchi_prueba1/src/pages/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/pages/home.dart';
import 'package:aguchi_prueba1/src/pages/login.dart';
import 'package:aguchi_prueba1/src/widgets/Error404.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/home': ( BuildContext context )=> const HomePage(),
    '/login': ( BuildContext context )=> const LoginPage(),
    '/error404': ( BuildContext context )=> const Error404page(),
    '/barcode' : ( BuildContext context )=> const barCodePage(),
  };
}