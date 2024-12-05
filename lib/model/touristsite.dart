import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/model/coordinate.dart';

class Touristsite {
  int? id;
  Coordinate? coordinate;
  String? name;
  Category? category;

  Touristsite({this.coordinate, this.id, this.name, this.category});
}
