import 'package:city_guide_app/model/coordinate.dart';

class User {
  String? id;
  String? name;
  String? placeId;
  List<Coordinate>? recentlyViewedPlaces;

  User({this.id, this.name, this.placeId, this.recentlyViewedPlaces});
}
