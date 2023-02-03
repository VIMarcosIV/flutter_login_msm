import 'dart:ui';

import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  final String email;
  final String password;
  const Home_Page({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido, $email'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Text(
          "Su correo es:  $email\nSu contraseña es:  $password",
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
