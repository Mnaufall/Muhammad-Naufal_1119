import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/hospital.dart';
// Ganti dengan path yang sesuai

class HospitalService {
  static final Dio _dio = Dio();

  static Future<List<Hospital>> fetchHospitals() async {
    try {
      final response1 = await _dio.get(
          "https://rs-bed-covid-api.vercel.app/api/get-hospitals?provinceid=33prop&cityid=3374&type=2");
      final response2 = await _dio.get(
          "https://rs-bed-covid-api.vercel.app/api/get-hospitals?provinceid=33prop&cityid=3320&type=2");
      final response3 = await _dio.get(
          "https://rs-bed-covid-api.vercel.app/api/get-hospitals?provinceid=33prop&cityid=3319&type=2");

      if (response1.statusCode == 200 &&
          response2.statusCode == 200 &&
          response3.statusCode == 200) {
        List jsonResponse1 = jsonDecode(response1.data)['hospitals'];
        List jsonResponse2 = jsonDecode(response2.data)['hospitals'];
        List jsonResponse3 = jsonDecode(response3.data)['hospitals'];

        List<Hospital> hospitals1 =
            jsonResponse1.map((data) => Hospital.fromJson(data)).toList();
        List<Hospital> hospitals2 =
            jsonResponse2.map((data) => Hospital.fromJson(data)).toList();
        List<Hospital> hospitals3 =
            jsonResponse3.map((data) => Hospital.fromJson(data)).toList();

        List<Hospital> combinedHospitals = [
          ...hospitals2,
          ...hospitals1,
          ...hospitals3
        ];

        return combinedHospitals;
      } else {
        throw Exception('Failed to load hospitals');
      }
    } catch (e) {
      throw Exception('Failed to load hospitals: $e');
    }
  }
}
