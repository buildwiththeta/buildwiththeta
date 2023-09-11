// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
  children: [Positioned(
  left: 0,
  top: 0,
  right: -10,
  bottom: -56,
  child: Container(
  width: 150,
  height: 150,
  
  
  decoration: const BoxDecoration(
    color: Color(0xff000000),
    
    boxShadow: [
      
    ],
  ),
  child: Container(
  width: double.maxFinite,
  height: 150,
  
  padding: const EdgeInsets.only(left: 24, top: 60, right: 24, bottom: 40),
  decoration: const BoxDecoration(
    color: Color(0xff000000),
    
    boxShadow: [
      
    ],
  ),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
    children: [
    Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
    children: [
    Container(
  decoration: BoxDecoration(
    
    boxShadow: [
      ,
    ],
  ),
  clipBehavior: Clip.hardEdge,
  child: Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Youtube_Music_icon.svg/1024px-Youtube_Music_icon.svg.png?20230802004652',
    width: 32,
    height: 32,
    fit: BoxFit.cover,
  ),
),
const Icon(
  Icons.abc,
  size: 24,
  color: Color(0xfff8f8f8),
),
  ],
),
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
    children: [
    Padding(
  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 16),
  child: Text(
  'Try YouTube Music Premium',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
)
,
Text(
  '1-month free trial • \$12.99/month',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
Padding(
  padding: const EdgeInsets.only(left: 0, top: 32, right: 0, bottom: 0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
    children: [
    Padding(
  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 8),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
    children: [
    Text(
  'Ad-free YouTube Music',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
Icon(
  MdiIcons.checkCircle,
  size: 18,
  color: const Color(0xfff8f8f8),
),
  ],
),
)
,
Padding(
  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 16),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
    children: [
    Text(
  'Downloads',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
Icon(
  MdiIcons.checkCircle,
  size: 18,
  color: const Color(0xfff8f8f8),
),
  ],
),
)
,
Padding(
  padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 16),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
    children: [
    Text(
  'Background play',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
Icon(
  MdiIcons.checkCircle,
  size: 18,
  color: const Color(0xfff8f8f8),
),
  ],
),
)
,
  ],
),
)
,
  ],
),
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
    children: [
    Container(
  width: 400,
  height: 56,
  
  
  decoration: const BoxDecoration(
    color: Color(0xff2461cb),
    
    boxShadow: [
      
    ],
  ),
  child: Align(
  alignment: Alignment.center,
  child: Text(
  'SUBSCRIBE NOW',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
)
),
),
Padding(
  padding: const EdgeInsets.only(left: 0, top: 8, right: 0, bottom: 0),
  child: Text(
  'Restrictions apply. Learn more here.',
  style: GoogleFonts.getFont(
  'Poppins',
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: const Color(0xfff8f8f8),
  decoration: TextDecoration.none,
  fontStyle: FontStyle.normal,
),
  textAlign: TextAlign.left,
  
  textDirection: TextDirection.ltr,
),
)
,
  ],
),
  ],
),
),
),
)],
),
    );
  }
}
