import 'package:malina/features/item/domain/item.dart';

abstract class IItemRepository {
  List<Item> getFoodItems();
  List<Item> getProductItems();
}
