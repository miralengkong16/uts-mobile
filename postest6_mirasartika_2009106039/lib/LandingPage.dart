import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest6_mirasartika_2009106039/MainPage.dart';
import 'package:postest6_mirasartika_2009106039/Profil.dart';
import 'Text_Controller.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  final GetxTextController tc = Get.put(GetxTextController());

  Widget formulir() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              style: TextStyle(color: Color(0xff92A3FD)),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff92A3FD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Nama Anda?",
                  labelStyle: TextStyle(
                    color: Color(0xff92A3FD),
                  )),
              controller: tc.nameEditingController,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //responsive adaptive
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: (tinggi / 4) - 120),
                      child: Image.asset("assets/catinland.png")),
                  Container(
                      margin: EdgeInsets.only(top: 10, bottom: 5),
                      child: Center(child: Image.asset("assets/Logo.png"))),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "EveryBody is CatLovers",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7B6F72),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(child: formulir()),
                  Container(
                    margin: EdgeInsets.only(top: 220),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => MainPage()),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(99))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
                            borderRadius: BorderRadius.circular(99)),
                        child: Container(
                          width: 315,
                          height: 60,
                          alignment: Alignment.center,
                          child: const Text(
                            'Meooww ....',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
