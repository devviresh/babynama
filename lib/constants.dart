import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var kInputStyle = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    labelText: 'Enter');

const kAlertStyle = AlertStyle(
  titleStyle: TextStyle(color: Colors.white),
  descStyle: TextStyle(
      color: Colors.white70, fontWeight: FontWeight.normal, fontSize: 16.0),
  backgroundColor: Color(0xff303030),
  alertBorder: InputBorder.none,
);