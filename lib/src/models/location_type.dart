import 'package:json_annotation/json_annotation.dart';

part 'location_type.g.dart';

@JsonSerializable()
class LocationType {
  final int? id;
  final String? name;
  final String? description;
  LocationType({this.id, this.name, this.description});

  factory LocationType.fromJson(Map<String, dynamic> json) =>
      _$LocationTypeFromJson(json);

  Map<String, dynamic> toJson() => _$LocationTypeToJson(this);
}