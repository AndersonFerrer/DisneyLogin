import 'package:disneyplus_login/buttonwidget.dart';
import 'package:disneyplus_login/src/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: NetworkImage('https://i.imgur.com/SE8ssBQ.jpg'),
                  height: 230,
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    child: Text(
                  'Inicie sesión',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                    child: Text(
                  'Tus historias favoritas, todas en un mismo lugar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 33, 33, 33),
                    hintText: 'Correo Electronico',
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.all(24),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.password_sharp,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 33, 33, 33),
                    hintText: 'Contraseña',
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.all(24),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        '¿Primera vez en Disney? ',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Text(
                        'Suscríbete',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ButtonWidget(
                  texto: 'INICIAR SESIÓN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
