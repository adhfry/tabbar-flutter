// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String kata = "ahda";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Link Disini',
                  labelText: 'Your Text', // Label untuk TextField
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    log(value);
                    kata = value;
                  });
                },
              ),
              QrImageView(
                data: kata,
                version: QrVersions.auto,
                size: 200.0,
                gapless: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
