import 'package:flutter/material.dart';
import 'package:postest6_mirasartika_2009106039/Formulir.dart';
import 'package:get/get.dart';
import 'package:postest6_mirasartika_2009106039/Text_Controller.dart';

class Profil extends StatelessWidget {
  Profil({Key? key}) : super(key: key);
  final GetxTextController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Image.asset(
                'assets/Pp.png',
                fit: BoxFit.contain,
                height: 25,
              ),
            ),
          ],
        ),
      ),
      body: Container(
          width: lebar,
          height: tinggi,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Hallo ${tc.nameEditingController.text}\nIni Profilmu\n==============",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff92A3FD),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(child: Image.asset("assets/Pp.png")),
            ],
          )),
    );
  }
}
