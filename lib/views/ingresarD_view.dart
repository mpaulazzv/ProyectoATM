import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_view.dart';

class ingresarD extends StatelessWidget {
  const ingresarD({super.key});

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
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Ingreso de dinero',
                style: GoogleFonts.bodoniModa(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: Text(
                  'Monto a ingresar:',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
                child: SizedBox(
                    width: 300,
                    child: TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(202, 202, 202, 1),
                      ),
                      decoration: InputDecoration(
                        hintText: '\$0.0',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(202, 202, 202, 1),
                        ),
                      ),
                    ))),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(150),
                primary: Color.fromRGBO(241, 193, 233, 1),
              ),
              onPressed: () {},
              child: Text(
                'Continuar',
                style: GoogleFonts.bodoniModa(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Transform.rotate(
                angle: 3.1416,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipperB(),
                      child: Container(
                        color: Color.fromRGBO(241, 193, 233, 1),
                        height: 149,
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperB(),
                      child: Container(
                        color: Color.fromRGBO(140, 151, 223, 1),
                        height: 119,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(                             
            backgroundColor: Color.fromARGB(255, 255, 180, 236),
            elevation: 50,
            focusElevation: 20,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Menu()));
            },
            child: Icon(Icons.arrow_back_ios_new), 
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
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
