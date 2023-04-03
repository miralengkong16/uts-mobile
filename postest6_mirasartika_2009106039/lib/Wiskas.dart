import 'package:flutter/material.dart';

class Wiskas extends StatelessWidget {
  const Wiskas({Key? key}) : super(key: key);

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
          width: lebar,
          height: tinggi,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Image.asset("assets/wiskas2.png")),
            ],
          )),
    );
  }
}
