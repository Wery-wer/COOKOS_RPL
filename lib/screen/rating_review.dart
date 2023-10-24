import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_dev/widget/ShowRatingStars.dart';
import 'package:flutter_dev/widget/RatingStars.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  TextEditingController kirimController = TextEditingController();
  TextEditingController reviewController =
  TextEditingController(text: 'Resepnya praktis banget!');
  TextEditingController enakController = TextEditingController();
  TextEditingController murahController = TextEditingController();
  TextEditingController praktisController = TextEditingController();
  int ratingFromRatingStars = 0;

  void handleRatingChange(int newRating) {
    setState(() {
      ratingFromRatingStars = newRating;
    });
    
  }

  void _kirim() {
    String kirim = kirimController.text;
    String enak = enakController.text;
    String murah = murahController.text;
    String praktis = praktisController.text;
    print(ratingFromRatingStars); // kirim ke database

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe5737d),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Rating dan Review',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Rubik',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //kolom keseluruhan
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(50, 0, 0, 0), width: 2.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //===============Hasil Rating(input dtbs)===============
                  Container(
                    margin: EdgeInsets.only(left: 22, top: 12),
                    child: Column(
                      children: [
                        Text(
                          '4.7',
                          style: TextStyle(
                            fontFamily: 'Nuito Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Container(
                          child: Text('87 rating'),
                        )
                      ],
                    ),
                  ),
                  //=========================RATING BINTANG DR DTBS==========================
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: ShowRatingStars(rating: 4.7),  //angka diubah dari database
                  ),
                ],
              ),
            ),
            Container(
              //======================container berisi row rasa enak, bahan murah, etc============================
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //container berisi makanan enak
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 120,
                    width: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/enak.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text(
                            'Rasa Enak',
                            style: TextStyle(
                                fontFamily: 'Nuito Sans',
                                fontWeight: FontWeight.bold),
                          ),
                          Text('53 rating') // diisi dari databasse
                        ]),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 110, 17, 83),
                        border: Border.all(
                            color: Color.fromARGB(49, 255, 255, 255), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Container(
                    //container berisi makanan enak
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/murah.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Text(
                          'Harga Murah',
                          style: TextStyle(
                            fontFamily: 'Nuito Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('42 rating'), //diisi database
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 237, 70, 100),
                        border: Border.all(
                            color: Color.fromARGB(50, 0, 0, 0), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Container(
                    //container berisi makanan enak
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/praktis.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Text(
                          'Praktis',
                          style: TextStyle(
                              fontFamily: 'Nuito Sans',
                              fontWeight: FontWeight.bold),
                        ),
                        Text('17 rating'), //diisi database
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(44, 177, 219, 56),
                        border: Border.all(
                            color: Color.fromARGB(50, 0, 0, 0), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(50, 0, 0, 0), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  Container(
                    //Container tambahkan rating(bintang)
                    height: 45,
                    width: 350,
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tambahkan Rating Anda',
                              style: TextStyle(
                                fontFamily: 'Nuito Sans',
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Container(
                            child: RatingStars(onRatingChanged: handleRatingChange)
                            
                            ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(50, 0, 0, 0),
                                width: 2.0))),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 90,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(50, 0, 0, 0),
                                width: 2.0))),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Apa yang Kamu Suka dari Resepnya?',
                              style: TextStyle(
                                  fontFamily: 'Nuito Sans',
                                  fontWeight: FontWeight.bold),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 90,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: ElevatedButton(
                                onPressed: (){enakController;},
                                child: Container(
                                  child: Text('Enak'),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xffe5737d), // Ubah warna latar belakang
                                  onPrimary: const Color.fromARGB(
                                      255, 0, 0, 0), // Ubah warna teks
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  minimumSize: Size(150, 40),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: ElevatedButton(
                                onPressed: _kirim,
                                child: Container(
                                  child: Text('Murah'),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xffe5737d), // Ubah warna latar belakang
                                  onPrimary: const Color.fromARGB(
                                      255, 0, 0, 0), // Ubah warna teks
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  minimumSize: Size(150, 40),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: ElevatedButton(
                                onPressed: _kirim,
                                child: Container(
                                  child: Text('Praktis'),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xffe5737d), // Ubah warna latar belakang
                                  onPrimary: const Color.fromARGB(
                                      255, 0, 0, 0), // Ubah warna teks
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  minimumSize: Size(150, 40),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          alignment: Alignment.center,
                          child: Text(
                            'Tambahkan Pengalamanmu',
                            style: TextStyle(
                                fontFamily: 'Nuito Sans',
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          //text box pengalaman
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          //height: 140,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            controller: reviewController,
                            maxLength: 1000,
                            maxLines: 3,
                            decoration: InputDecoration(
                                fillColor: Color.fromARGB(25, 0, 0, 0),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          )),
                      Container(
                        width: 110,
                        margin: EdgeInsets.only(right: 30),
                        child: ElevatedButton(
                          onPressed: _kirim,
                          child: Row(
                            children: [
                              Container(child: Text('Kirim')),
                              Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.arrow_forward))
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(
                                0xffe5737d), // Ubah warna latar belakang
                            onPrimary: const Color.fromARGB(
                                255, 0, 0, 0), // Ubah warna teks
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            minimumSize: Size(150, 40),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              //==========================BERISI REVIEW DARI DATABASE======================
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'Ulasan Pengguna (87)', //diisi database banyaknya rating
                        style: TextStyle(
                            fontFamily: 'Nuito Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                  //================isi review(loop)===================
                  Container(
                    height: 150,
                    width: 350,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(70, 0, 0, 0), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  )
                  //==================isi review(loop)==================
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffe5737d),
              ),
            )
          ],
        ),
      ),
    );
  }
}
