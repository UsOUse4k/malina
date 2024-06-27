import 'package:injectable/injectable.dart';
import 'package:malina/features/item/domain/i_item_repository.dart';
import 'package:malina/features/item/domain/item.dart';
import 'package:malina/gen/assets.gen.dart';

@LazySingleton(as: IItemRepository)
class DummyItemRepository implements IItemRepository {
  @override
  List<Item> getFoodItems() {
    return [
      Item(
        id: 1,
        category: "Bellagio Coffee",
        imagePath: Assets.images.food1.path,
        name: "Том ям",
        description: "Пицца с соусом том ям\n230 гр",
        price: 250,
      ),
    ];
  }

  @override
  List<Item> getProductItems() {
    return [
      Item(
        id: 2,
        category: "Hair",
        imagePath: Assets.images.product1.path,
        name: "Hadat Cosmetics",
        description:
            "Шампунь интенсивно\nвосстанавливающий Hydro\nIntensive Repair Shampoo 250 мл",
        price: 1900,
      ),
      Item(
        id: 3,
        category: "Hair",
        imagePath: Assets.images.product2.path,
        name: "Hadat Cosmetics",
        description: "Увлажняющий кондиционер\n150 мл",
        price: 2000,
      ),
      Item(
        id: 4,
        category: "Preen Beauty",
        imagePath: Assets.images.product3.path,
        name: "L’Oreal Paris\nElseve",
        description: "Шампунь для\nослабленных волос",
        price: 600,
      ),
    ];
  }
}
