import 'package:flutter/material.dart';
import 'package:postest6_mirasartika_2009106039/Formulir.dart';

class Ragdoll extends StatelessWidget {
  const Ragdoll({Key? key}) : super(key: key);

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
                'assets/ATIMCAT.png',
                fit: BoxFit.contain,
                height: 25,
              ),
            ),
          ],
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 39),
                  child: Image.asset("assets/Ragdoll2.png")),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: "Jenis                :Ragdoll\n",
                    children: <TextSpan>[
                      TextSpan(text: "Umur                :2 Bulan\n"),
                      TextSpan(text: "Tanggal Lahir :13 Maret 2022\n"),
                      TextSpan(text: "Berat                :2Kg\n"),
                      TextSpan(text: "Warna              :Oren-Coklat\n"),
                      TextSpan(text: "Mata                :Biru\n"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 13),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Formulir()),
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
                        'Adopt',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
