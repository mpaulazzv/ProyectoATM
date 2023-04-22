import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_atm/views/menu_view.dart';

class consultarS extends StatelessWidget {
  const consultarS({super.key});

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
          Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/Usuario.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Nombre de Usuario',
                style: GoogleFonts.bodoniModa(
                    fontSize: 15, fontWeight: FontWeight.bold, height: 2.3),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Transacciones',
                        style: GoogleFonts.bodoniModa(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 2.3),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(241, 193, 233, 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            '\$0.0',
                            style: GoogleFonts.bodoniModa(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(241, 193, 233, 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            '\$0.0',
                            style: GoogleFonts.bodoniModa(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(241, 193, 233, 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            '\$0.0',
                            style: GoogleFonts.bodoniModa(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Saldo',
                        style: GoogleFonts.bodoniModa(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 2.3),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(241, 193, 233, 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            '\$0.0',
                            style: GoogleFonts.bodoniModa(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Container(
                          height: 45,
                          width: 120,
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          height: 45,
                          width: 120,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
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
