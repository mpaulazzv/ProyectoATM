import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 251, 218),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 200,  
              child: Text(
                'Usuario: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),  
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 116, 116, 116),
                    ),
                  ))),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            width: 200,  
              child: Text(
                'Contraseña: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),  
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 116, 116, 116),
                    ),
                  ))),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              print("Oprimió el botón de iniciar sesión");
            },
            child: Text("Iniciar sesión"),
          ),
        ],
      ),
    );
  }
}
