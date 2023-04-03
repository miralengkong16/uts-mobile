import 'package:flutter/material.dart';

class Formulir extends StatefulWidget {
  const Formulir({Key? key}) : super(key: key);

  @override
  State<Formulir> createState() => _MyHomePageState();
}

enum Gender {
  none,
  Jantan,
  Betina,
}

enum Yeno {
  none,
  Yes,
  No,
}

class _MyHomePageState extends State<Formulir> {
  Gender? kelamin = Gender.none;
  Yeno? yeno = Yeno.none;
  String nama = '',
      namacat = '',
      email = '',
      alamat = '',
      nohp = '',
      namapet = '',
      tanggal = '';

  final ctrlNama = TextEditingController();
  final ctrltanggal = TextEditingController();
  final ctrlNamacat = TextEditingController();
  final ctrlemail = TextEditingController();
  final ctrlnohp = TextEditingController();
  final ctrlnamapet = TextEditingController();
  final ctrlalamat = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrltanggal.dispose();
    ctrlNama.dispose();
    ctrlNamacat.dispose();
    ctrlemail.dispose();
    ctrlnohp.dispose();
    ctrlnamapet.dispose();
    ctrlalamat.dispose();
    super.dispose();
  }

  String getKelamin(Gender? value) {
    if (value == Gender.Jantan) {
      return "Jantan";
    } else if (value == Gender.Betina) {
      return "Betina";
    }
    return "";
  }

  String getyeno(Yeno? value) {
    if (value == Yeno.Yes) {
      return "memiliki peliharaan lain yang bernama";
    } else if (value == Yeno.No) {
      return "tidak memiliki peliharaan lain";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();

    SnackBar mySnackBar(String text) {
      return SnackBar(
        content: Text(
          "Data sudah di sesuaikan !!!",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        duration: Duration(seconds: 7),
        backgroundColor: Color(0xff9839f0),
        padding: EdgeInsets.all(15),
      );
    }

    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                    width: lebar,
                    height: tinggi / 6,
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Column(
                        children: [
                          Text(
                            "FORMULIR ADOPSI KUCING",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff9839f0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset("assets/paw.png"),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlNama,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama Pengadopsi Kucing",
                      hintText: "Nama Lengkap",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrltanggal,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9839f0)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tanggal Adopsi",
                      hintText: "12 Februari 2022",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlNamacat,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama Kucing Yang Anda Inginkan",
                      hintText: "Berikan aku nama yang baik",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlemail,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9839f0)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      hintText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlnohp,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nomor Telepon",
                      hintText: "+62 8123456789",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: ctrlalamat,
                  maxLines: 5,
                  style: TextStyle(color: Color(0xff9839f0)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Alamat",
                      hintText: "Jl. Menuju Surga",
                      labelStyle: TextStyle(
                        color: Color(0xff9839f0),
                      )),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    left: 8,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text("Jenis Kelamin Kucing yang di adopsi",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9839f0),
                      ))),
              ListTile(
                title: Text("Jantan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: kelamin,
                  value: Gender.Jantan,
                  onChanged: (Gender? value) {
                    setState(() {
                      kelamin = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Betina",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: kelamin,
                  value: Gender.Betina,
                  onChanged: (Gender? value) {
                    setState(() {
                      kelamin = value;
                    });
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    left: 8,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text("Apakah Anda Memiliki Peliharaan lain?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9839f0),
                      ))),
              ListTile(
                title: Text("Punya",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: yeno,
                  value: Yeno.Yes,
                  onChanged: (Yeno? value) {
                    setState(() {
                      yeno = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Tidak Punya",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff03e56),
                    )),
                leading: Radio(
                  groupValue: yeno,
                  value: Yeno.No,
                  onChanged: (Yeno? value) {
                    setState(() {
                      yeno = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ctrlnamapet,
                  style: TextStyle(color: Color(0xfff03e56)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff03e56)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama Peliharaan Sebelumnya",
                      hintText: "Siapa nama temanku nanti? ...",
                      labelStyle: TextStyle(
                        color: Color(0xfff03e56),
                      )),
                ),
              ),

              //alert
              ElevatedButton(
                onPressed: () {
                  SnackBar snackBar = mySnackBar(_myController.text);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    nama = ctrlNama.text;
                    nohp = ctrlnohp.text;
                    namacat = ctrlNamacat.text;
                    namapet = ctrlnamapet.text;
                    email = ctrlemail.text;
                    alamat = ctrlalamat.text;
                    tanggal = ctrltanggal.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff9839f0),
                ),
                child: Text("MEOOOW"),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 40, left: 8, right: 8, bottom: 8),
                  width: lebar,
                  height: tinggi / 2,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          color: Color.fromARGB(255, 116, 112, 112))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "SURAT PERNYATAAN",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color(0xfff03e56)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text("Yang bertanda tangan di bawah ini :",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text("Nama Lengkap  : $nama",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email                   : $email",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nomor Telepon : $nohp",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            child: Text("Alamat                : $alamat",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              width: lebar,
                              margin: EdgeInsets.only(left: 16, right: 16),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Pada tanggal $tanggal, telah mengadopsi seekor kucing bernama $namacat, berjenis kelamin ${getKelamin(kelamin)}, yang mana ${getyeno(yeno)} $namapet.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10, right: 20),
                              alignment: Alignment.centerRight,
                              child: Image.asset("assets/catinban.png")),
                        ],
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
