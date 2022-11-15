import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? texto;
  final Function? onPressed;
  final Color? color;
  final double? fuente;
  final FontWeight? bold;

  const ButtonWidget({
    super.key,
    this.texto = '',
    this.onPressed,
    this.color = Colors.blue,
    this.fuente = 18,
    this.bold = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54,
      minWidth: double.infinity,
      elevation: 0,
      color: color!,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Text(texto!,
          style: TextStyle(
              color: Colors.white, fontSize: fuente!, fontWeight: bold!)),
      onPressed: () => onPressed!(),
    );
  }
}
