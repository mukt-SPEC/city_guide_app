import 'package:city_guide_app/core/dummy.dart';
import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/core/textstyle.dart';
import 'package:city_guide_app/model/tourist_site.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Touristsite site;
  const DetailsPage({required this.site, super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final site = widget.site;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        forceMaterialTransparency: true,
        title: Text(
          site.placeName!,
          style: kTextStyle(16, textWeight: TextWeight.semiBold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xfff2f2f2),
              ),
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
                      site.address!,
                      style: kTextStyle(14, textWeight: TextWeight.normal),
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
                      site.rating.toString(),
                      style: kTextStyle(14, textWeight: TextWeight.semiBold),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              site.description!,
              style: kTextStyle(12),
            ),
          ],
        ),
      ),
    );
  }
}
