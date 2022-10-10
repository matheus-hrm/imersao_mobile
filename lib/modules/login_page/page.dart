
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/colors.dart';
import 'package:flutter_application_1/modules/login_page/widgets/helpButton.dart';
import 'package:flutter_application_1/modules/login_page/widgets/loginApple.dart';
import 'package:flutter_application_1/modules/login_page/widgets/loginGoogle.dart';
import 'package:flutter_application_1/modules/sign_up/page.dart';
import 'package:get/get.dart';

import '../home/page.dart';


class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);


 @override 
 Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,         
              colors: [
                almond,
                almond,
                almond,
                gray,
                gray,
                gray,
              ],
            )
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                    width: 500,
                    height: 250,
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.7,
                      image: const AssetImage('assets/logo.png'),
                    ),
                  ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: pink,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                          cursorColor: pink,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Senha',
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: TextButton(
                                  onPressed: () => Get.to(const SignUp()),
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      'Cadastrar',
                                      style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      backgroundColor: Colors.transparent,    
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              FloatingActionButton(onPressed: (() => Get.to(HomePage())),
                              backgroundColor: gray,
                              child: const Icon(Icons.arrow_forward),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               GoogleBtn1(
                                onPressed: (){},
                                ),
                               AppleBtn1(
                                onPressed: (){},
                                ),
                            ],
                          )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                     child: const Text(
                    'Esqueci minha senha',
                    style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       HelpButton(
                        gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,         
                        colors: [
                          almond,
                          almond,
                          gray,
                          gray,
                        ],
                      ),
                       icon: const Icon(Icons.help), 
                      onPressed: () => {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
 }
}