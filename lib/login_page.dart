// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intelirio_app/constants.dart';
import 'package:intelirio_app/widgets/app_bar.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  Text createLogo(String logo) {
    return Text(
      logo,
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = Color(primaryColor)
      ),
    );
  }

  SizedBox createInput(String hintText, String validatorAlert, bool obscureText){
    return SizedBox(
      width: 300, 
      child: TextFormField(
        validator: (String? value) => (value == null || value.isEmpty) ? validatorAlert : null,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder()
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Color(secondaryColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              child: createLogo('InteliRio')
            ),
            createInput('Usuário', 'Insira o usuário', false),
            createInput('Senha', 'Insira a senha', true),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Login')),
            )
          ],
        )
      ),
    );
  }
}
