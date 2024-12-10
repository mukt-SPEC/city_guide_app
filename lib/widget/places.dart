import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/core/textstyle.dart';
//import 'package:city_guide_app/model/tourist_site.dart';
import 'package:city_guide_app/screen/details_page.dart';
import 'package:flutter/material.dart';

import '../core/dummy.dart';

class Places extends StatelessWidget {
  // final Touristsite sites;
  final int index;

  const Places(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(site: sites[index]),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Row(
                  children: [
                    const Icon(Icons.person),
                    const SizedBox(width: 8),
                    Text(
                      sites[index].userReview.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sites[index].placeName!,
                    style: kTextStyle(14, textWeight: TextWeight.medium),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    sites[index].address!,
                    style: kTextStyle(12, textWeight: TextWeight.normal),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 168, 152, 10),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    sites[index].rating.toString(),
                    style: kTextStyle(14, textWeight: TextWeight.semiBold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
