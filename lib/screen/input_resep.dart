import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  TextEditingController judulController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController bahantroller = TextEditingController();
  TextEditingController caraController = TextEditingController();

  void _unggah() {
    String judul = judulController.text;
    String harga = hargaController.text;
    String bahan = bahantroller.text;
    String cara = caraController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // navigator.popAndPushNamed(context, '/home_page');
              },
            ),
            backgroundColor: Color(0xffe5737d),
            centerTitle: true,
            title: Text(
              'Input Resep',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Foto',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Nuito Sans',
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                            height: 110,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(20, 0, 0, 0),
                                border: Border.all(
                                    color: Color.fromARGB(15, 0, 0, 0),
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(15)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Judul',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Nuito Sans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          customTextField(
                              controller: judulController,
                              hintText: 'Masukkan Judul Makanan'),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Harga',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Nuito Sans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          customTextField(
                              controller: hargaController,
                              hintText: 'Masukkan Harga Makanan'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 20),
                child: (Text(
                  'Bahan - bahan',
                  style: TextStyle(
                    fontFamily: 'Nuito Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Container(
                width: 360,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  controller: bahantroller,
                  maxLines: 10,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(20, 0, 0, 0),
                      filled: true,
                      hintText: 'Masukkan alat dan bahan makanan',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 20),
                child: (Text(
                  'Cara Memasak',
                  style: TextStyle(
                    fontFamily: 'Nuito Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Container(
                width: 360,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  controller: bahantroller,
                  maxLines: 10,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(20, 0, 0, 0),
                      filled: true,
                      hintText: 'Masukkan langkah-langkah membuat makanan',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 90,
                child: ElevatedButton(
                  onPressed: _unggah,
                  child: Container(
                    child: Text('Murah'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        const Color(0xffe5737d), // Ubah warna latar belakang
                    onPrimary:
                        Color.fromARGB(255, 255, 255, 255), // Ubah warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    minimumSize: Size(150, 40),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class customTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const customTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              controller: controller,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xffA9A9A9),
                      )),
                  hintText: hintText),
            ),
          ),
        ],
      ),
    );
  }
}