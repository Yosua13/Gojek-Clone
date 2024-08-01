import 'package:clone_gojek/components/header.dart';
import 'package:clone_gojek/models/datas/icons.dart';
import 'package:clone_gojek/models/datas/news.dart';
import 'package:clone_gojek/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xFF8E8E8E))),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            // ignore: deprecated_member_use
                            color: dark1,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          Text('Cari layanan, makanan & tujuan',
                              style: regular14.copyWith(color: dark3)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  16 / 2), // Menyesuaikan ukuran borderRadius
                              color: const Color(0xFFD1E7EE),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: SvgPicture.asset('assets/icons/goclub.svg'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Gopay
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xFFBBBBBB),
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Container(
                            height: 11,
                            width: 118,
                            decoration: const BoxDecoration(
                                color: Color(0xFF9CCDDB),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 71,
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gopay.png',
                                  height: 14,
                                ),
                                Text(
                                  'Rp100.000',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & cek riwayat',
                                  style: semibold12_5.copyWith(color: green1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                  'assets/icons/${icon.icon}.svg',
                                  color: blue1,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                icon.title,
                                style: semibold14.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),

            // Menu Icons
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  children: [
                    ...menuIcons.map((icon) => Container(
                          child: Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: icon.icon == 'goclub'
                                        ? Colors.white
                                        : icon.color,
                                    borderRadius: BorderRadius.circular(20)),
                                child: SvgPicture.asset(
                                  'assets/icons/${icon.icon}.svg',
                                  color: icon.icon == 'goclub'
                                      ? icon.color
                                      : icon.icon == 'other'
                                          ? dark2
                                          : Colors.white,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(height: 9),
                              Text(
                                icon.title,
                                style: regular12_5.copyWith(color: dark2),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),

            // Go club
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
              child: Container(
                height: 65,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFEAF3F6), Colors.white]),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color(0xFFE8E8E8))),
                child: Stack(
                  children: [
                    Positioned(
                        left: 8,
                        top: 4,
                        bottom: 4,
                        child: SvgPicture.asset('assets/icons/dots.svg')),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            height: 40,
                          ),
                          const SizedBox(width: 16),
                          Flexible(
                              fit: FlexFit.tight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '117 XP lagi ada Harta Karun',
                                    style: semibold14.copyWith(color: dark1),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: LinearProgressIndicator(
                                        backgroundColor: dark3,
                                        color: green1,
                                        value: .8,
                                      ))
                                ],
                              )),
                          const SizedBox(width: 24),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            height: 24,
                            color: dark1,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Akses Cepat
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 16, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akses Cepat",
                    style: bold18.copyWith(color: dark1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFE8E8E8))),
                    child: Column(
                      children: [
                        ...[
                          'Pintu masuk motor, MNC Land',
                          'Pintu keluar motor, MNC Land'
                        ].map((text) => Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        color: green2,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: SvgPicture.asset(
                                      'assets/icons/goride.svg',
                                      color: Colors.white,
                                      width: 24,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Text(
                                      text,
                                      style: regular14.copyWith(color: dark1),
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  SvgPicture.asset(
                                    'assets/icons/left.svg',
                                    height: 24,
                                    color: dark1,
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Gopay Latter
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/gopaylater.png',
                    height: 14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Lebih hemat pake GoPayLater 🤩',
                    style: bold16.copyWith(color: dark1),
                  ),
                  Text(
                    'Yuk belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                    style: regular14.copyWith(color: dark2),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            // News
            ...news.map((item) => Padding(
                  padding:
                      const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: dark4)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/${item.image}',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: bold16.copyWith(color: dark1),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                item.description,
                                style: regular14.copyWith(color: dark2),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
