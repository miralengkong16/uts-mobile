import 'package:flutter/material.dart';
import 'package:postest6_mirasartika_2009106039/Formulir.dart';

class Siam extends StatelessWidget {
  const Siam({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.only(left: 75, bottom: 39),
                  child: Image.asset("assets/Siam2.png")),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: "Jenis                :Siam\n",
                    children: <TextSpan>[
                      TextSpan(text: "Umur                :10 Bulan\n"),
                      TextSpan(text: "Tanggal Lahir :10 Juli 2021\n"),
                      TextSpan(text: "Berat                :3Kg\n"),
                      TextSpan(
                          text: "Warna              :Hitam-Coklat-Putih\n"),
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
                            colors: [Color(0xffC58BF2), Color(0xffEEA4CE)]),
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
