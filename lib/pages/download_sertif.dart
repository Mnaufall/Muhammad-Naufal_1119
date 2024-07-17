import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadSertif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFF007EF2),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 12, 15.5, 9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(7, 0, 0, 191),
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
                      width: 72.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0.3, 0, 0.3),
                            child: SizedBox(
                              width: 18.4,
                              height: 10.7,
                              child: SvgPicture.asset(
                                'assets/vectors/cellular_connection_2_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0.3),
                            child: SizedBox(
                              width: 16.6,
                              height: 11,
                              child: SvgPicture.asset(
                                'assets/vectors/wifi_1_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: SizedBox(
                              width: 26.3,
                              height: 11.3,
                              child: SvgPicture.asset(
                                'assets/vectors/battery_5_x2.svg',
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
              margin: EdgeInsets.fromLTRB(20.3, 0, 20.3, 22),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sertifikat Vaksin Dosis Pertama',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1,
                    letterSpacing: -0.2,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0.5, 200),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  width: 358,
                  height: 255,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0.5, 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(17, 20, 17.4, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 13.4, 0),
                                child: SizedBox(
                                  width: 26,
                                  height: 26,
                                  child: SvgPicture.asset(
                                    'assets/vectors/icondownload_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                child: Text(
                                  'DOWNLOAD SERTIFIKAT',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    height: 1.1,
                                    letterSpacing: -0.2,
                                    color: Color(0xFF007EF2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(14.2, 18, 15.2, 26),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFFFFFFF)),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          'x',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 64,
                            height: 0.3,
                            letterSpacing: -0.2,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.5, 0, 0, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 151,
                    height: 4,
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