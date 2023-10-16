import 'package:flutter/material.dart';

class filterResep extends StatefulWidget {
  const filterResep({super.key});

  @override
  State<filterResep> createState() => _filterResepState();
}



class _filterResepState extends State<filterResep> {
  TextEditingController carirespController = TextEditingController();

  void _filter(){
    String filterResep = carirespController.text;
    //Navigator.pushNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Color.fromARGB(255, 255, 255, 255),
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/filter_resep");
            },
          ),
          backgroundColor: Color(0xffe5737d),
          centerTitle: true,
          title: Text(
            'Mencari Resep',
            style: TextStyle(
                color: Color.fromRGBO(236, 236, 236, 1),
                fontFamily: 'Rubik',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
      ),
      body: (
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(50, 0, 0, 0), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        //alignment: Alignment.centerLeft,
                          child: Text(
                            'cari resep',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFD9D9D9),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: _filter,
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe5737d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Container(
                      child: Image.asset('assets/images/filter.png'),
                    )),
                  ),
                //======================container back to mencari resep
          ],)
          ],
          )
      ),
    ));
  }
}
