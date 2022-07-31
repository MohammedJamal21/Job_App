import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/src/widgets/button_Style.dart';
import 'package:job_app/src/widgets/textfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  MyTextField(
                    controller: emailController,
                    title: 'Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: passwordController,
                    title: 'Password',
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: MyButtonStyle(
                        buttontitl: "Sing Up",
                      )),
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
