import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/model/coordinate.dart';

class Touristsite {
  final int? id, userReview;
  final Coordinate? coordinate;
  final String? placeName, address, description;
  final Category? category;
  final double? rating;

  Touristsite(
      {this.coordinate,
      this.id,
      this.placeName,
      this.category,
      this.address,
      this.description,
      this.userReview,
      this.rating});
}
