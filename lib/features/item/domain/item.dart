import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String category,
    required String imagePath,
    required String name,
    required String description,
    required int price,
  }) = _Item;
}
