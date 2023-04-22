import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_atm/views/menu_view.dart';

class EnviarD extends StatelessWidget {
  const EnviarD({super.key});

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
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'Envío de dinero',
              style: GoogleFonts.bodoniModa(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
              width: 320,
              child: Text(
                'Nombre del destinatario: ',
                style: GoogleFonts.bodoniModa(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 35,
              width: 320,
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(202, 202, 202, 1),
                ),
                decoration: InputDecoration(
                  hintText: 'Ingrese el nombre del destinatario',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(202, 202, 202, 1),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
                width: 320,
                child: Text(
                  'Nombre del destinatario: ',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
          ),
          Center(
              child: SizedBox(
            height: 35,
            width: 320,
            child: TextField(
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(202, 202, 202, 1),
              ),
              decoration: InputDecoration(
                hintText: 'Ingrese el número de cuenta destino',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(202, 202, 202, 1),
                ),
              ),
            ),
          )),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
                width: 320,
                child: Text(
                  'Monto: ',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
          ),
          Center(
            child: SizedBox(
              height: 30,
              width: 320,
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(202, 202, 202, 1),
                ),
                decoration: InputDecoration(
                  hintText: '\$0.00',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(202, 202, 202, 1),
                ),
              ),
            ),
          )),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              fixedSize: Size.fromWidth(100),
              primary: Color.fromRGBO(248, 187, 237, 97),
            ),
            onPressed: () {},
            child: Text(
              'Enviar',
              style: GoogleFonts.bodoniModa(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Color.fromARGB(255, 255, 180, 236),
        elevation: 50,
        focusElevation: 20,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Menu()));
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
