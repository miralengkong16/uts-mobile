import 'package:flutter/material.dart';
import 'package:postest6_mirasartika_2009106039/Pouch.dart';
import 'package:postest6_mirasartika_2009106039/Profil.dart';
import 'package:postest6_mirasartika_2009106039/Formulir.dart';
import 'package:postest6_mirasartika_2009106039/Ragdoll.dart';
import 'package:postest6_mirasartika_2009106039/ShortHair.dart';
import 'package:postest6_mirasartika_2009106039/Siam.dart';
import 'package:postest6_mirasartika_2009106039/Applaws.dart';
import 'package:postest6_mirasartika_2009106039/Wiskas.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final switchController n = Get.put(switchController());
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(() => Container(
            color: n.switchValue.value
                ? Color.fromARGB(255, 195, 36, 36)
                : Colors.deepPurple)),
        actions: [
          Obx(() => Switch(
                value: n.switchValue.value,
                onChanged: (newValue) {
                  n.switchValue(newValue);
                },
              )),
        ],
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffEEA4CE).withOpacity(0.2),
                    Color(0xffC58BF2).withOpacity(0.2),
                  ]),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Image.asset("assets/paw.png")),
                    Image.asset("assets/Logo.png"),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Akun"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Profil();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text("Adopsi"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Formulir();
                  },
                ));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              //SearchBar
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Material(
                            elevation: 5,
                            shadowColor: Color(0xffDDDADA),
                            //text field
                            child: TextField(
                              cursorColor: Color.fromARGB(255, 0, 0, 0),
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Cari ..",
                                  hintStyle: TextStyle(color: Colors.white),
                                  prefixIcon: Container(
                                    child: Image.asset(
                                      "assets/cari.png",
                                    ),
                                  )),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //Banner
              Container(
                margin: EdgeInsets.all(16),
                width: lebar,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(colors: [
                    Color(0xff9DCEFF).withOpacity(0.2),
                    Color(0xff92A3FD).withOpacity(0.2),
                  ]),
                ),
                child: Row(children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Good Morning !!!",
                            style: TextStyle(
                              color: Color(0xff1D1617),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Mira Sartika ",
                            style: TextStyle(
                              color: Color(0xff92A3FD),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ]),
                  Container(
                      margin: EdgeInsets.only(left: 55),
                      child: Image.asset("assets/catinban.png"))
                ]),
              ),
              //Adopt Space
              Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    //Adop me..
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Adopt Me ...",
                        style: TextStyle(
                          color: Color(0xff1D1617),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //Ragdoll
                          Container(
                            margin: EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            width: 200,
                            height: 239,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              gradient: LinearGradient(colors: [
                                Color(0xff9DCEFF).withOpacity(0.2),
                                Color(0xff92A3FD).withOpacity(0.2),
                              ]),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/Ragdoll.png"),
                                Text(
                                  "Ragdoll",
                                  style: TextStyle(
                                    color: Color(0xff1D1617),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "2 Bulan | Fit | 2 kg",
                                  style: TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => Ragdoll()),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff9DCEFF),
                                                Color(0xff92A3FD)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Container(
                                        width: 115,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Adopt',
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Siam
                          Container(
                            margin: EdgeInsets.only(
                                top: 16, bottom: 16, left: 8, right: 8),
                            width: 200,
                            height: 239,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              gradient: LinearGradient(colors: [
                                Color(0xffEEA4CE).withOpacity(0.2),
                                Color(0xffC58BF2).withOpacity(0.2),
                              ]),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/Siam.png"),
                                Text(
                                  "Siam",
                                  style: TextStyle(
                                    color: Color(0xff1D1617),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "10 Bulan | Fit | 3 kg",
                                  style: TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => Siam()),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffC58BF2),
                                                Color(0xffEEA4CE)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Container(
                                        width: 115,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Adopt',
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Shorthair
                          Container(
                            margin: EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            width: 200,
                            height: 239,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              gradient: LinearGradient(colors: [
                                Color(0xff9DCEFF).withOpacity(0.2),
                                Color(0xff92A3FD).withOpacity(0.2),
                              ]),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/Shothair.png"),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Shorthair",
                                    style: TextStyle(
                                      color: Color(0xff1D1617),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "6 Bulan | Fit | 2,4 kg",
                                  style: TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => ShortHair()),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff9DCEFF),
                                                Color(0xff92A3FD)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Container(
                                        width: 115,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Adopt',
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16, top: 13),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recomendation Food ...",
                      style: TextStyle(
                        color: Color(0xff1D1617),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13, left: 16, right: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Applaws()),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xff9DCEFF),
                              Color(0xff92A3FD),
                            ]),
                            borderRadius: BorderRadius.circular(22)),
                        child: Container(
                          width: lebar,
                          height: 80,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/Applaws.png"),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 23, left: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Applaws Cat",
                                        style: TextStyle(
                                          color: Color(0xff1D1617),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17,
                                        ),
                                      ),
                                      Text(
                                        "Ocean Fish | 5 Ons",
                                        style: TextStyle(
                                          color: Color(0xff7B6F72),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13, left: 16, right: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Pouch()),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xffC58BF2),
                              Color(0xffEEA4CE),
                            ]),
                            borderRadius: BorderRadius.circular(22)),
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 8, bottom: 8, left: 16, right: 16),
                          width: lebar,
                          height: 80,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/WPouch.png"),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 23, left: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Whiskas Pouch Junior",
                                        style: TextStyle(
                                          color: Color(0xff1D1617),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17,
                                        ),
                                      ),
                                      Text(
                                        "Mix Flavour | 12 x 85g",
                                        style: TextStyle(
                                          color: Color(0xff7B6F72),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13, left: 16, right: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Wiskas()),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Ink(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xff9DCEFF),
                                Color(0xff92A3FD),
                              ]),
                              borderRadius: BorderRadius.circular(22)),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 16, right: 16, bottom: 8),
                            width: lebar,
                            height: 80,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/WAdult.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 23, left: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Whiskas Adult",
                                          style: TextStyle(
                                            color: Color(0xff1D1617),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "Tuna | 1.2 Kg",
                                          style: TextStyle(
                                            color: Color(0xff7B6F72),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class switchController extends GetxController {
  var switchValue = false.obs;
}
