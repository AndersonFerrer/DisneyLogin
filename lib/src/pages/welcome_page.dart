import 'package:disneyplus_login/buttonwidget.dart';
import 'package:disneyplus_login/src/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../../ui_constants.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const _backgroundImage(),
          const _backgroundGradient(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.network(
                      "https://lumiere-a.akamaihd.net/v1/images/b_disneyplus_header_mobile_18281_cf9000ab.png")),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Tus historias favoritas,\ntodas en un mismo lugar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ButtonWidget(
                  texto: 'SUSCRIBETE AHORA',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Comienza a ver Disney+ por \S/.25.90/mes o\n\S/.259.00/año.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ButtonWidget(
                  color: Colors.transparent,
                  texto: 'INICIAR SESIÓN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 35),
            ],
          )
        ],
      ),
    );
  }
}

class _backgroundGradient extends StatelessWidget {
  const _backgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                ])),
          ),
        )
      ],
    );
  }
}

class _backgroundImage extends StatelessWidget {
  const _backgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Image.network(
                "https://cannonball-cdn.bamgrid.com/assets/originals/MLP_HERO_MBL_MEXICO.jpg",
                fit: BoxFit.cover)),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}
