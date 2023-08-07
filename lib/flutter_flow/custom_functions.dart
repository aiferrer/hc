import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double totalfactura(List<double>? listaprecios) {
  // sum a list of numbers
  double total = 0;
  for (int i = 0; i < listaprecios!.length; i++) {
    total = total + listaprecios[i];
  }
  return total;
}

double? facturaconbonif(double? subtotal) {
  int bonificacion = 0;

  if (subtotal == null) {
    return 0;
  }
  if (bonificacion != 0) {
    // subtraction of two numbers
    var total = subtotal - bonificacion;
    return total;
  } else {
    return subtotal;
  }
}
