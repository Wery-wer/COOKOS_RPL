import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class logout extends StatefulWidget {
  const logout({super.key});

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: const Color(0xffe5737d),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            // Text Ririn Marinka
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Rinrin Marinka",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF000000),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: RatingBar.builder(
                    direction: Axis.horizontal,
                    itemSize: 17,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ),
                Container(
                  child: Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top : 200),
                  child: Text(
                    "Anda Telah ",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 30,
                          color: Color(0xFF676767),
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 36,
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom : 100),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 30,
                          color: Color(0xFF676767),
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 36,
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            // BOX OK
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('OK'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: const Color(0xffe5737d), // Ubah warna teks
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.84),
                  ),
                  minimumSize: const Size(260, 57.96),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}