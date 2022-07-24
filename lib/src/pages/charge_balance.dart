import 'package:aguchi_prueba1/src/widgets/appBarPages.dart';
import 'package:flutter/material.dart';
import 'package:aguchi_prueba1/src/widgets/customButtonMini.dart';

class CargarSaldo extends StatefulWidget {
  const CargarSaldo({ Key? key }) : super(key: key);

  @override
  State<CargarSaldo> createState() => _CargarSaldoState();
}

class _CargarSaldoState extends State<CargarSaldo> {
  @override

  void _cart() => Navigator.of(context).pushNamed('/cart');

  Widget build(BuildContext context) {
    return CustomAppBarPages(
      title: "Cargar Saldo",
        child: ListView(
          children: <Widget>[
            Container(
            width: 200,
            height: 100,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(220, 220, 220, 220),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 4),
                      blurRadius: 6)
                ]),
              child: const ListTile(
                title: Text("Saldo Actual",textAlign: TextAlign.center, style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                subtitle: Text("\$500,00",textAlign: TextAlign.center, style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black54)),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonMini(
                  child:Image.asset('assets/ingresar_dinero.png', width: 170), 
                  onPressed: ()=>{},
                  ),
                const SizedBox(width: 20),
                CustomButtonMini(
                  child: Image.asset('assets/mp_logo.png', width: 170), 
                  onPressed: ()=>{},
                  ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonMini(
                  child: const Icon(Icons.sync_alt,
                        size: 100,
                        color: Colors.black54,
                        ),  
                  onPressed: ()=>{},
                  ),
                const SizedBox(width: 20),
                CustomButtonMini(
                  child: const Icon(Icons.credit_card,
                        size: 100,
                        color: Colors.black54,
                        ),    
                  onPressed: ()=>{},
                  ),
              ],
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                child: const Text("Ir al carrito"),
                onPressed: ()=> _cart(),
              ),
            )
          ],
        ),
      );
  }
}