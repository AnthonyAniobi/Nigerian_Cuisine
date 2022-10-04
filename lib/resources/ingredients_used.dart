import 'package:nigerian_cuisine/models/app_images.dart';

class IngredientsUsed {
  static final ingridients = [
    IngredientsUsed(
        "Bitter Leaf",
        "common name:(Ewuro in Yoruba or Vernonia). It can be bought fresh or dried. It is bitter to taste but very delicious in stewsor together with Egusi soup",
        AppImages.i_bitterleaf),
    IngredientsUsed(
        "Brown Beans",
        "common name: Brown Beans This is a sweet type of beans used for Moi-Moi or\nbean cake(akara). Brown beans is Ewa-oloyin in Yoruba",
        AppImages.i_brownbeans),
    IngredientsUsed(
        "Coco Yam",
        "Coco yam or Tannia or Taro is a starchy shrub use in\nthickening vegetable soups and in the making of Fufu.",
        AppImages.i_cocoyam),
    IngredientsUsed(
        "Crab",
        "Crabs often make a delicious garnish to Nigerian vegetable soups. You can cut the pincers off and remove the intestines with aknife.",
        AppImages.i_crab),
    IngredientsUsed(
        "Cray Fish",
        "Like crabs crayfish/lobsters are other delicious additions to soups for that added crunchiness.",
        AppImages.i_crayfish),
    IngredientsUsed(
        "Jute",
        "commonly called Ewedu, Jute leaves or Saluyot is an iron richfresh vegetable similar to spinach. It is cooked until slippery then served with tomato and pepper stew to give a natural richness",
        AppImages.i_ewedu),
    IngredientsUsed(
        "Garden Eggs",
        "Garden egg or Igba in Yoruba is a vegetable fruit. Sometimes yellow in colour they are used in preparing stews or eaten with yam.",
        AppImages.i_gardeneggs),
    IngredientsUsed(
        "Ginger",
        "Ginger, tomatoes, onions, small chilli pepper, yellow pepper, garlic & red peppers blended together are the essential ingredients you need to make your red pepper stew.",
        AppImages.i_ginger),
    IngredientsUsed(
        "Goat Meat",
        "Although similar to lamb Goat meat is far healthier and it has far less fat than chicken whilst being higher in protein and iron.",
        AppImages.i_goatmeat),
    IngredientsUsed(
        "Green Bananas",
        "Green bananas are bananas used instead of plantain which are only 60% ripe. They make a healthy and delicious porridge dish.",
        AppImages.i_greenbananas),
    IngredientsUsed(
        "Locust Beans",
        "Fermented locust beans or Iru in Yoruba enhances the flavour of soups like ogbono or Ewedu. They are pungent smelling and should be frozen for storage. The aroma makes vegetables taste delicious.",
        AppImages.i_locustbeans),
    IngredientsUsed(
        "Melon Seeds",
        "it is commonly called egusi leaf This is the main\ningredient in making Egusi.",
        AppImages.i_melonseeds),
    IngredientsUsed(
        "Okra",
        "Okra or gumbo is one of the most common African vegetables. It is often enjoyed as a soup thickener and very slippery. Do not store okra for too long (3 days max) and use whilst fresh.",
        AppImages.i_okra),
    IngredientsUsed(
        "Palm Kernel",
        "Palm kernel Palm kernel is the fruit seed of the palm fruit, a source of unrefined palm oil.",
        AppImages.i_palmkernel),
    IngredientsUsed(
        "Periwinkle",
        "The common periwinkle is an edible small sea snail with a thick shell. A choice addition to garnish all kinds of vegetable soups.",
        AppImages.i_periwinkle),
    IngredientsUsed(
        "Scent Leaf",
        "Scent leaf or Efirin in Yoruba is a condiment similar to basil. Shrimps Along with crabs, periwinkles and crayfish, shrimps are another example of a delicacy you can add to enhance richness of your cooking.",
        AppImages.i_scentleaf),
    IngredientsUsed(
        "Spinach",
        "Spinach is the vegetable used in making Efo riro. Stockfish Dried stockfish or panla in Yoruba. It is very rich in taste  and fleshy; it also has a lovely aroma in food, mainly used in vegetable soup.",
        AppImages.i_spinach),
    IngredientsUsed(
        "Stock fish(smoked)",
        "Like the dried variety Smoked stockfish is far healthier than fresh fish and more succulent in taste. You should soak them in water for at least 2 hrs to make them tender.",
        AppImages.i_smokedfish),
    IngredientsUsed(
        "Pumpkin Leaves",
        "Ugu or pumpkin leaves is a vegetable favoured by the Igbo people of Nigeria. Use it to cook Edikai Ikong or add it to Egusi or Ogbono soup for a delicious taste.",
        AppImages.i_ugwu),
    IngredientsUsed(
        "Yam",
        "Yam is a highly nutritious tuber plant that is very rich in carbohydrates and can also be boiled, mashed or pounded",
        AppImages.i_yam)
  ];
  String description;
  String image;
  String name;

  IngredientsUsed(
    this.name,
    this.description,
    this.image,
  );
}
