import 'dart:math';

import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/model/tourist_site.dart';

List<Touristsite> sites = List.generate(10, (index) {
  return Touristsite(
      id: index,
      placeName: "Place $index",
      category: Category.values[Random().nextInt(5)],
      address: "address $index",
      description:
          "This should hold a brief and concise description of the sites in view, it should not be more than 3 lines",
      userReview: 10 + Random().nextInt(50),
      rating: 1 + double.parse((Random().nextDouble() * 4).toStringAsFixed(1)));
});
