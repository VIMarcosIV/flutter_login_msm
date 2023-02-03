import 'package:flutter/material.dart';
import 'package:flutter_login_msm/pages/home_page.dart';

import '../widgets/custom_input_widget.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> resultadosFormulario = {
      'email': 'example@gmail.com',
      'password': '1234',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputWidget(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  icon: Icons.email_outlined,
                  suffixIcon: Icons.email_outlined,
                  teclado: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: resultadosFormulario,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                  labelText: 'Contraseña',
                  hintText: 'Password del usuario',
                  icon: Icons.password_outlined,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: resultadosFormulario,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (myFormKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home_Page(
                            email: resultadosFormulario['email']!,
                            password: resultadosFormulario['password']!,
                          ),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: const Center(
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
