import 'package:city_guide_app/core/dummy.dart';
import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/core/textstyle.dart';
import 'package:city_guide_app/widget/history.dart';
import 'package:city_guide_app/widget/places.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int placeCount = sites.length;
  Category selectedCategory = Category.all;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        //leading: const Icon(Icons.waving_hand_rounded),
        title: Row(
          children: [
            const Text('👋'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Kano city guide',
              style: kTextStyle(16),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HistoryWidget(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendations',
                        style: kTextStyle(14, textWeight: TextWeight.semiBold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'See more',
                              style:
                                  kTextStyle(12, textWeight: TextWeight.medium),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...Category.values.map((category) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: ChoiceChip(
                                    backgroundColor: const Color(0xfff4f4f4),
                                    side: const BorderSide(
                                        style: BorderStyle.none),
                                    selectedColor: const Color(0xff121212),
                                    showCheckmark: false,
                                    label: Text(
                                      '${category.name} ${selectedCategory == category ? placeCount : ''}',
                                    ),
                                    labelStyle: TextStyle(
                                        color: selectedCategory == category
                                            ? const Color(0xffffffff)
                                            : const Color(0xff4f4f4f)),
                                    selected: selectedCategory == category,
                                    onSelected: (_) {
                                      setState(() {
                                        selectedCategory = category;
                                        placeCount =
                                            selectedCategory == Category.all
                                                ? sites.length
                                                : sites
                                                    .where((site) =>
                                                        site.category ==
                                                        selectedCategory)
                                                    .length;
                                      });
                                    }),
                              );
                            })
                          ],
                        ),
                      ],
                    ),
                  )
                  //const SizedBox(height: 8),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  if (selectedCategory == Category.all)
                    ...sites.map(
                      (site) => Places(
                        sites.indexOf(site),
                      ),
                    )
                  else
                    ...sites
                        .where((site) => site.category == selectedCategory)
                        .map(
                          (site) => Places(
                            sites.indexOf(site),
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
