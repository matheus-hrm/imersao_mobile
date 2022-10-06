
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/colors.dart';
import 'package:flutter_application_1/modules/login_page/widgets/loginApple.dart';
import 'package:flutter_application_1/modules/login_page/widgets/loginGoogle.dart';
import 'package:get/get.dart';


class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);


 @override 
 Widget build(BuildContext context) {
    return Scaffold(
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
                              width: 120,
                              height: 50,
                              color: Colors.grey,
                              child: TextButton(
                                onPressed: (){}, 
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Cadastrar',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.5,
                                    backgroundColor: Colors.grey,
                                  
                              ),
                              ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            FloatingActionButton(onPressed: (){},
                            backgroundColor: purpleNavy,
                            child: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                        const SizedBox(height: 0,),
                        Row(
                          children: [
                             GoogleBtn1(onPressed: (){},),
                          
                             AppleBtn1(onPressed: (){},),
                          ],
                        )
                    ],
                  ),
                ),
                TextButton(onPressed: () => {}, child:
                 const Text(
                  'Esqueci minha senha'
                  )),
              ],
            ),
          ),
        ),
      ),
    );
 }
}