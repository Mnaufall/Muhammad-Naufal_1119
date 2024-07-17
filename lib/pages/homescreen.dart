import 'package:flutter/material.dart';
import 'package:flutter_app/hospital.dart';
import 'package:flutter_app/pages/HospitalDetailPage.dart';
import 'package:flutter_app/service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late Future<List<Hospital>> futureHospitals;

  @override
  void initState() {
    super.initState();
    futureHospitals = HospitalService.fetchHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF007EF2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.9),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF007EF2),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 12, 15.5, 13.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(5.7, 0, 0, 22.9),
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
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 5.3, 0, 3.4),
                                child: SizedBox(
                                  width: 72.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0.3, 0, 0.3),
                                        child: SizedBox(
                                          width: 18.4,
                                          height: 10.7,
                                          child: SvgPicture.asset(
                                            'assets/vectors/cellular_connection_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0.3),
                                        child: SizedBox(
                                          width: 16.6,
                                          height: 11,
                                          child: SvgPicture.asset(
                                            'assets/vectors/wifi_5_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: SizedBox(
                                          width: 26.3,
                                          height: 11.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/battery_1_x2.svg',
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
                          margin: const EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 18, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/rectangle_2.png',
                                                ),
                                              ),
                                            ),
                                            child: const SizedBox(
                                              width: 52,
                                              height: 51.9,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 16, 0, 16),
                                          child: Text(
                                            'Hi, Naufal',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              height: 1.1,
                                              letterSpacing: -0.2,
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 100.3,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 16.4, 31.7, 16.2),
                                            width: 16.5,
                                            height: 19.3,
                                            child: SizedBox(
                                              width: 16.5,
                                              height: 19.3,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 52,
                                            height: 51.9,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFFFFFFFF)),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 66,
                                bottom: 0,
                                child: Container(
                                  width: 52,
                                  height: 51.9,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xFFFFFFFF)),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(15.1, 0, 15.1, 11),
              //   child: Align(
              //     alignment: Alignment.topLeft,
              //     child: Text(
              //       'Sertifikat Vaksin',
              //       style: GoogleFonts.getFont(
              //         'Inter',
              //         fontWeight: FontWeight.w700,
              //         fontSize: 18,
              //         height: 1.1,
              //         letterSpacing: -0.2,
              //         color: const Color(0xFFFFFFFF),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(16, 0, 16, 26.6),
              //   child: Align(
              //     alignment: Alignment.topLeft,
              //     child: Stack(
              //       children: [
              //         Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Container(
              //               margin:
              //                   const EdgeInsets.fromLTRB(0.1, 0, 0.1, 12.2),
              //               child: Align(
              //                 alignment: Alignment.topLeft,
              //                 child: Opacity(
              //                   opacity: 0.7,
              //                   child: Text(
              //                     'Dosis Pertama',
              //                     style: GoogleFonts.getFont(
              //                       'Inter',
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 16,
              //                       height: 1.3,
              //                       letterSpacing: -0.2,
              //                       color: const Color(0xFFFFFFFF),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               decoration: BoxDecoration(
              //                 color: const Color(0xFFFFFFFF),
              //                 borderRadius: BorderRadius.circular(15),
              //               ),
              //               child: const SizedBox(
              //                 width: 246,
              //                 height: 140,
              //               ),
              //             ),
              //           ],
              //         ),
              //         Positioned(
              //           right: -254,
              //           bottom: 0,
              //           child: SizedBox(
              //             width: 246,
              //             height: 172.2,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   margin:
              //                       const EdgeInsets.fromLTRB(0, 0, 0, 12.2),
              //                   child: Align(
              //                     alignment: Alignment.topLeft,
              //                     child: Opacity(
              //                       opacity: 0.7,
              //                       child: Text(
              //                         'Dosis Kedua',
              //                         style: GoogleFonts.getFont(
              //                           'Inter',
              //                           fontWeight: FontWeight.w400,
              //                           fontSize: 16,
              //                           height: 1.3,
              //                           letterSpacing: -0.2,
              //                           color: const Color(0xFFFFFFFF),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                     color: const Color(0xFFFFFFFF),
              //                     borderRadius: BorderRadius.circular(15),
              //                   ),
              //                   child: const SizedBox(
              //                     width: 246,
              //                     height: 140,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 14.4),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hasil Tes Covid-19',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      height: 1.1,
                      letterSpacing: -0.2,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 26),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(13, 19, 24.5, 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: Text(
                                        'PCR NEGATIF',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          height: 1.1,
                                          letterSpacing: -0.2,
                                          color: const Color(0xFF00AB59),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF00AB59),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Container(
                                        width: 22,
                                        height: 20,
                                        padding: const EdgeInsets.fromLTRB(
                                            4, 5, 4, 5.5),
                                        child: SizedBox(
                                          width: 14,
                                          height: 9.5,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Berlaku hingga 20 Nov 11:11AM',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.4,
                                letterSpacing: -0.2,
                                color: const Color(0xFF9D9D9D),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 18, 0, 17.5),
                          child: SizedBox(
                            width: 5.5,
                            height: 9.5,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_21_x2.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 30.4, 16, 32),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 26.3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 10, 0.6),
                                    child: SizedBox(
                                      width: 243,
                                      child: Text(
                                        'Check Daftar Rumah sakit di sekitarmu',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          height: 1.1,
                                          letterSpacing: -0.2,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FutureBuilder<List<Hospital>>(
                              future: futureHospitals,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      final hospital = snapshot.data![index];
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HospitalDetailPage(
                                                  hospital: hospital,
                                                ),
                                              ));
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 14.2),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 15.7),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 400,
                                                          child: Text(
                                                            hospital.name,
                                                            maxLines:
                                                                1, // Batasi maksimal 1 baris
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 18,
                                                              height: 1.1,
                                                              letterSpacing:
                                                                  -0.2,
                                                              color: const Color(
                                                                  0xFF007EF2),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            hospital.address,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                              height: 1.7,
                                                              letterSpacing:
                                                                  -0.2,
                                                              color: const Color(
                                                                  0xFF9D9D9D),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: SizedBox(
                                                  width: 358,
                                                  height: 0,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_3_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                } else if (snapshot.hasError) {
                                  return Center(
                                      child: Text("${snapshot.error}"));
                                }
                                return const Center(
                                    child: CircularProgressIndicator());
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
