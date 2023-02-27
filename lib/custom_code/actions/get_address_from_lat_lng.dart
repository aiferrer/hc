// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> getAddressFromLatLng(double lat, double lng) async {
  String apiKey = 'AIzaSyDkjTELEvKIDAG6NFus4eb-c270S3DsHOo';
  String url =
      'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$apiKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    if (json['status'] == 'OK') {
      return json['results'][0]['formatted_address'];
    } else {
      throw Exception('Error de geocodificación inversa: ${json['status']}');
    }
  } else {
    throw Exception('Error al obtener la dirección: ${response.statusCode}');
  }
}
