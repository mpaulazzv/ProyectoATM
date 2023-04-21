import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_atm/views/ingresarD_view.dart';
import 'package:proyecto_atm/views/login_view.dart';
import 'package:proyecto_atm/views/enviarD_view.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 239, 198, 100),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Color.fromRGBO(241, 193, 233, 1),
                    height: 120,
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Color.fromRGBO(140, 151, 223, 1),
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0.5),
                  fixedSize: Size.fromWidth(5),
                  primary: Color.fromRGBO(241, 193, 233, 1),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: Image.asset(
                  'assets/salir.png',
                  width: 25,
                  height: 25,
                  color: Color.fromRGBO(255, 255, 255, 20),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          SizedBox(
            width: 300,
            child: Text(
              textAlign: TextAlign.center,
              'Menú',
              style: GoogleFonts.bodoniModa(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(     
                      padding: EdgeInsets.all(0.5),              
                      fixedSize: Size.fromWidth(80),
                      primary: Color.fromRGBO(248, 239, 198, 100),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EnviarD()));
                   },
                    child: Image.asset(
                      'assets/EnviarD.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Enviar Dinero',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(    
                      padding: EdgeInsets.all(0.5),                
                      fixedSize: Size.fromWidth(80),
                      primary: Color.fromRGBO(248, 239, 198, 100),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu())); //Cambiar
                    },
                    child: Image.asset(
                      'assets/RetirarD.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Retirar Dinero',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(  
                      padding: EdgeInsets.all(0.5),                   
                      fixedSize: Size.fromWidth(80),
                      primary: Color.fromRGBO(248, 239, 198, 100),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ingresarD())); //Cambiar
                    },
                    child: Image.asset(
                      'assets/IngresarD.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Ingresar Dinero',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0.5),
                      fixedSize: Size.fromWidth(80),
                      primary: Color.fromRGBO(248, 239, 198, 100),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu())); //Cambiar
                    },
                    child: Image.asset(
                      'assets/ConsultarD.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Consultar Saldo',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            child: Transform.rotate(
              angle: pi,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperB(),
                    child: Container(
                      color: Color.fromRGBO(241, 193, 233, 1),
                      height: 120,
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperB(),
                    child: Container(
                      color: Color.fromRGBO(140, 151, 223, 1),
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCliper) => false;
}

class WaveClipperB extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCliper) => false;
}
