import 'package:get/get.dart';
import 'package:indoor_positioning_visitor/src/models/location.dart';

class Constants {
  /// Location type is lift
  static const int locationTypeLift = 3;

  /// Location type is stair
  static const int locationTypeStair = 4;

  /// Base url for calling api
  static final String baseUrl = "https://ipsb.azurewebsites.net/";

  /// Timeout when calling API
  static final Duration timeout = Duration(seconds: 20);

  /// Default query of paging parameters
  static const Map<String, dynamic> defaultPagingQuery = {
    'page': '1',
    'pageSize': '20'
  };

  /// Initial value for emptyMap
  static const Map<String, dynamic> emptyMap = {};

  /// Initial value for empty set of locations
  static const Set<Location> emptySetLocation = {};

  /// Infinite distance for node
  static const double infiniteDistance = double.infinity;

  /// Get default rx var getx controller
  static Rx<T> get<T>() {
    return (Get.arguments['defaultState'] as T).obs;
  }

  /// Default image
  static const String imageErr = "assets/images/error.png";

  static const String pin = "assets/images/pin.png";

  static const String discountTypeFixed = "Fixed";
  static const String discountTypePercentage = "Percentage";
}

class MapKey {
  static const int stairCase = 4;
  static const int elevator = 3;
  static const int restRoom = 10;
  static const int store = 1;
}

class MapValue {
  static const String stairCase = "assets/images/staircase.png";
  static const String elevator = "assets/images/elevator.png";
  static const String restRoom = "assets/images/toilet.png";
  static const double radius = 18;
}
