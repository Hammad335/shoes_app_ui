import '../models/category.dart';
import '../constants/enums.dart';
import '../models/shoe.dart';

class DummyData {
  static List<Category> CATEGORIES = [
    Category(
        name: CATEGORY_NAMES.Nike.name,
        imagePath: 'assets/images/categories/nike.png'),
    Category(
        name: CATEGORY_NAMES.Puma.name,
        imagePath: 'assets/images/categories/random.png'),
    Category(
        name: CATEGORY_NAMES.Adida.name,
        imagePath: 'assets/images/categories/adidas.png'),
    Category(
        name: CATEGORY_NAMES.Puma.name,
        imagePath: 'assets/images/categories/random.png'),
  ];
  static List<Shoe> SHOES = [
    Shoe(
        name: 'Nike Air Max 200',
        category: CATEGORY_NAMES.Nike.name,
        imagePath: 'assets/images/categories/nike.png',
        isFavorite: true,
        subTitle: 'Trending Now',
        price: 240),
    Shoe(
        name: 'Nike Air Max 97',
        category: CATEGORY_NAMES.Nike.name,
        imagePath: 'assets/images/categories/nike.png',
        isFavorite: false,
        subTitle: 'Trending Now',
        price: 300),
  ];
}
