import 'package:ipsb_visitor_app/src/models/store.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  bool? isSelected = false;
  final int? id;
  final String? name, description, imageUrl;
  final double? price;
  final Store? store;
  final int? storeId;
  final String? status;
  @JsonKey(ignore: true)
  int? shoppingItemId;
  @JsonKey(ignore: true)
  String? note;
  @JsonKey(ignore: true)
  bool checked = false;
  Product({
    this.id,
    this.storeId,
    this.name,
    this.description,
    this.price,
    this.imageUrl,
    this.store,
    this.note,
    this.status,
  });
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
