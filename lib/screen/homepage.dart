import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController profileController = TextEditingController();

  void _profile() {
    String profile = profileController.text;
    Navigator.pushNamed(context, "/Melihat_profile");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            children: [
                Container(
                  height: 130,
                  width: 420,
                  decoration: BoxDecoration(
                      color: Color(0xFFE5737D),
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 10, left: 20),
                                    child: Icon(
                                      color: Color(0xFFFFFFFF),
                                      Icons.sunny_snowing,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Good Morning",
                                      style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Rubik',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 24),
                              child: Text(
                                "Welcome Ririn",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.popAndPushNamed(
                                  context, "/Melihat_profile");
                            },
                            child: Image.asset(
                              "assets/images/people.png",
                              height: 30,
                              width: 27,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
          ),
          toolbarHeight: 140,
          backgroundColor: const Color(0xffe5737d),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            )
          ),
        ),
      //===============================body==================================
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                    width: 350,
                    height: 174,
                    decoration: BoxDecoration(
                      //color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/images/food1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Stack(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(top: 110, left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width:200,
                              child: Text(
                                "Traditional spare ribs baked",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Popins",
                                  fontSize: 19.78,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Text(
                                "By Chef John",
                                style: TextStyle(
                                  color: const Color(0xFFA9A9A9),
                                  fontFamily: "Popins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 270),
                        width: 68,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.39),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                            Text(
                              "4.0",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.38,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
                //=====================================================food2=================================================
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                    width: 350,
                    height: 174,
                    decoration: BoxDecoration(
                      //color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/images/food1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Stack(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(top: 110, left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width:200,
                              child: Text(
                                "Traditional spare ribs baked",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Popins",
                                  fontSize: 19.78,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Text(
                                "By Chef John",
                                style: TextStyle(
                                  color: const Color(0xFFA9A9A9),
                                  fontFamily: "Popins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 270),
                        width: 68,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.39),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                            Text(
                              "4.0",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.38,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
                //=====================================food3===================================
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                    width: 350,
                    height: 174,
                    decoration: BoxDecoration(
                      //color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/images/food1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Stack(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(top: 110, left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width:200,
                              child: Text(
                                "Traditional spare ribs baked",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Popins",
                                  fontSize: 19.78,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Text(
                                "By Chef John",
                                style: TextStyle(
                                  color: const Color(0xFFA9A9A9),
                                  fontFamily: "Popins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 270),
                        width: 68,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.39),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                            Text(
                              "4.0",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.38,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
                //================================food4=====================================
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                    width: 350,
                    height: 174,
                    decoration: BoxDecoration(
                      //color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/images/food1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Stack(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(top: 110, left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width:200,
                              child: Text(
                                "Traditional spare ribs baked",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Popins",
                                  fontSize: 19.78,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Text(
                                "By Chef John",
                                style: TextStyle(
                                  color: const Color(0xFFA9A9A9),
                                  fontFamily: "Popins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 270),
                        width: 68,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.39),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                            Text(
                              "4.0",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.38,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), // Warna latar belakang
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0), // Radius untuk membuat ujung atas bulat
          ),
          boxShadow: [
              BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(0, 2), // Atur offset bayangan sesuai kebutuhan
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                size: 40,
                color: Color(0xFFE5737D),
                ),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/input_resep");
              }
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFE5737D),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 255, 255, 255),
                  ),
                onPressed: () {
                  //Navigator.popAndPushNamed(context, "/search_resep");
                }
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                size: 40,
                color: Color(0xFFE5737D),
                ),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/logout");
              }
            )
          ],
        ),
      ),
      ),
    );
  }
}