import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_atm/views/menu_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

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
                    color: Color.fromRGBO(248, 187, 237, 97),
                    height: 150,
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Color.fromRGBO(110, 126, 228, 89),
                    height: 130,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 65,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Usuario: ',
              style: GoogleFonts.bodoniModa(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Center(
              child: SizedBox(
                  width: 300,
                  child: TextField(
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(0, 0, 0, 200),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Ingrese su usuario',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(0, 0, 0, 200),
                      ),
                    ),
                  ))),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Contraseña: ',
              style: GoogleFonts.bodoniModa(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Center(
              child: SizedBox(
                  width: 300,
                  child: TextField(
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(0, 0, 0, 200),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Ingrese su contraseña',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(0, 0, 0, 200),
                      ),
                    ),
                  ))),
          const SizedBox(
            height: 65,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              fixedSize: Size.fromWidth(200),
              primary: Color.fromRGBO(248, 187, 237, 97),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
            },
            child: Text(
              "Iniciar sesión",
              style: GoogleFonts.bodoniModa(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 20),
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
