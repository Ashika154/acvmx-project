import 'package:flutter/material.dart';

import 'AttachmentPage.dart';
import 'ProfilePage.dart';



void main() {
  runApp(const WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home : AttachmentPage(),
    );
  }
}


