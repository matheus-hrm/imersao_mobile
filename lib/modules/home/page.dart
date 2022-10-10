import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/core/colors.dart';
import 'package:flutter_application_1/modules/home/widgets/modulos.dart';
import 'package:flutter_application_1/modules/speech_to_text/page.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: almond,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'IMERSÃO MOBILE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                WidgetModulo(
                  titulo: 'Speech to Text',
                  descricao: 'Desafio 2',
                  onPressed: () => Get.to(SpeechToTextPage()),
                ),
                WidgetModulo(
                  titulo: 'Desafio 2',
                  descricao: 'Desafio 2',
                  onPressed: () => {},
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}