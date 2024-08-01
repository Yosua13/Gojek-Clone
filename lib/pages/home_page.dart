import 'package:clone_gojek/components/akses_cepat.dart';
import 'package:clone_gojek/components/goclub.dart';
import 'package:clone_gojek/components/gopay.dart';
import 'package:clone_gojek/components/gopay_latter.dart';
import 'package:clone_gojek/components/header.dart';
import 'package:clone_gojek/components/menu_icon.dart';
import 'package:clone_gojek/components/search.dart';
import 'package:clone_gojek/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(),
            
            Gopay(),

            MenuIcon(),
            
            Goclub(),
          
            AksesCepat(),
            
            GopayLatter()
          ],
        ),
      ),
    );
  }
}