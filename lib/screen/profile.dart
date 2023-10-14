import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dev/screen/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // melihatprofilewMi (3:272)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupqbrqQuW (GpK7wT4d7DwmfBJRrbqbrQ)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
              padding: EdgeInsets.fromLTRB(28.33*fem, 30*fem, 28.33*fem, 25*fem),
              width: 376*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/vector-6.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // myprofileF9S (3:274)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 6*fem),
                    child: Text(
                      'My Profile',
                      style: SafeGoogleFont (
                        'Rubik',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5555555556*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup2kgciYp (GpK85XfVdjczDDzaQP2KGc)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93.67*fem, 0*fem),
                    width: double.infinity,
                    height: 131*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // rightoqA (3:275)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 0*fem),
                          width: 5.68*fem,
                          height: 12*fem,
                          child: Image.asset(
                            'assets/page-1/images/right.png',
                            width: 5.68*fem,
                            height: 12*fem,
                          ),
                        ),
                        Container(
                          // group79yNG (3:277)
                          padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 5*fem, 5*fem),
                          width: 131*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(65.5*fem),
                          ),
                          child: Container(
                            // memojiEoz (3:279)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffe5737d),
                              borderRadius: BorderRadius.circular(999*fem),
                            ),
                            child: Align(
                              // memojiBz8 (I3:279;1:14)
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 126.09*fem,
                                height: 126.09*fem,
                                child: Image.asset(
                                  'assets/page-1/images/memoji.png',
                                  fit: BoxFit.cover,
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
            ),
            Container(
              // rinrinmarinka6bJ (3:280)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'Rinrin Marinka',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 15*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupew36c3r (GpK8NmfmNiyJ2gfcW1ew36)
              padding: EdgeInsets.fromLTRB(58*fem, 21*fem, 57*fem, 385.04*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group61wM2 (3:281)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.04*fem),
                    width: double.infinity,
                    height: 57.96*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffe5737d),
                      borderRadius: BorderRadius.circular(24.840763092*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Edit',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Rubik',
                          fontSize: 14.0764331818*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.185*ffem/fem,
                          color: Color(0xfff6f6f9),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group80PTv (3:284)
                    width: double.infinity,
                    height: 57.96*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffe5737d),
                      borderRadius: BorderRadius.circular(24.840763092*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Bookmark',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Rubik',
                          fontSize: 14.0764331818*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.185*ffem/fem,
                          color: Color(0xfff6f6f9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}