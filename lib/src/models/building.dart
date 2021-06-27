import 'package:indoor_positioning_visitor/src/models/floor_plan.dart';
import 'package:json_annotation/json_annotation.dart';

part 'building.g.dart';

@JsonSerializable()
class Building {
  final int? id, managerId, adminId, numberOfFloor;
  final String? imageUrl;
  final String? address;
  final List<FloorPlan>? floorPlans;
  Building({
    this.floorPlans,
    this.id,
    this.managerId,
    this.adminId,
    this.numberOfFloor,
    this.imageUrl,
    this.address,
  });

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingToJson(this);
}