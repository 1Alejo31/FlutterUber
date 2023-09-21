import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea permite que no se sobreponga en el notch
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.black87,
              ],
            ),
          ),
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/img/logo_app.png',
                        width: 150,
                        height: 100,
                      ),
                      const Text('Facil y Rapido')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'SELECCIONA TU ROL',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img/pasajero.png'),
                radius: 50,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Cliente',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img/driver.png'),
                radius: 50,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Conductor',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
