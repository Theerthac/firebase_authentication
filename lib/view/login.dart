import 'package:chat_app_firebase/widgets/button.dart';
import 'package:chat_app_firebase/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 207, 207),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text("Welcome back,You've been missed!",style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                const SizedBox(
                  height: 25,
                ),
                TextFieldWidget(
                    controller: emailTextController,
                    hintText: 'Email',
                    obcureText: false),
                    const SizedBox(height: 10,),
                     TextFieldWidget(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obcureText: true),
                    const SizedBox(height: 20,),
                    ButtonWidget(
                      onTap: (){},
                      text: 'Sign In'),
                      const SizedBox(height: 25,),
                      Row(children: [
                        Text("Not a member?",style: TextStyle(
                          color: Colors.grey.shade700
                        ),),
                        const SizedBox(width: 4,),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Text("Register Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          ),
                        )
                      ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
