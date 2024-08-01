import 'package:clone_gojek/models/datas/news.dart';
import 'package:clone_gojek/theme.dart';
import 'package:flutter/material.dart';

class GopayLatter extends StatelessWidget {
  const GopayLatter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //GopayLater
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
              padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
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
    );
  }
}
