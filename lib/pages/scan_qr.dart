import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class ScanQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFF007EF2),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23.2, 12, 16, 9),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 799),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            '9:41',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              height: 1.3,
                              letterSpacing: -0.2,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.3, 0, 3.4),
                          child: SizedBox(
                            width: 74.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.3, 0, 0.3),
                                  child: SizedBox(
                                    width: 18.9,
                                    height: 10.7,
                                    child: SvgPicture.asset(
                                      'assets/vectors/cellular_connection_1_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0.3),
                                  child: SizedBox(
                                    width: 17.1,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/wifi_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 27.1,
                                    height: 11.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/battery_4_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 6.2, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF000000),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 155.3,
                        height: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -23.2,
              right: -16,
              top: -12,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/images_1.jpeg',
                    ),
                  ),
                ),
                child: Container(
                  width: 401,
                  height: 833,
                ),
              ),
            ),
            Positioned(
              bottom: -9,
              child: Opacity(
                opacity: 0.5,
                child: SizedBox(
                  width: 401,
                  height: 844,
                  child: SvgPicture.asset(
                    'assets/vectors/subtract_x2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              left: 11.8,
              right: 19,
              top: 230,
              child: Container(
                width: 331,
                height: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Positioned(
              bottom: 313,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xFF64BEFF), Color(0x000093FE)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Container(
                  width: 401,
                  height: 57,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 55),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0295FF),
                    ),
                    child: Container(
                      width: 401,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}