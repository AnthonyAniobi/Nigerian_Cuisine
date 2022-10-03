package com.devessentials.nigeriancuisine.resource;

import com.devessentials.nigeriancuisine.C0523R;

public class IngredientsUsed {
    public static final IngredientsUsed[] ingridients = {new IngredientsUsed("Bitter Leaf", "common name:(Ewuro in Yoruba or Vernonia). It can be bought fresh or dried. It is bitter to taste but very delicious in stewsor together with Egusi soup", C0523R.C0525drawable.i_bitterleaf), new IngredientsUsed("Brown Beans", "common name: Brown Beans This is a sweet type of beans used for Moi-Moi or\nbean cake(akara). Brown beans is Ewa-oloyin in Yoruba", C0523R.C0525drawable.i_brownbeans), new IngredientsUsed("Coco Yam", "Coco yam or Tannia or Taro is a starchy shrub use in\nthickening vegetable soups and in the making of Fufu.", C0523R.C0525drawable.i_cocoyam), new IngredientsUsed("Crab", "Crabs often make a delicious garnish to Nigerian vegetable soups. You can cut the pincers off and remove the intestines with aknife.", C0523R.C0525drawable.i_crab), new IngredientsUsed("Cray Fish", "Like crabs crayfish/lobsters are other delicious additions to soups for that added crunchiness.", C0523R.C0525drawable.i_crayfish), new IngredientsUsed("Jute", "commonly called Ewedu, Jute leaves or Saluyot is an iron richfresh vegetable similar to spinach. It is cooked until slippery then served with tomato and pepper stew to give a natural richness", C0523R.C0525drawable.i_ewedu), new IngredientsUsed("Garden Eggs", "Garden egg or Igba in Yoruba is a vegetable fruit. Sometimes yellow in colour they are used in preparing stews or eaten with yam.", C0523R.C0525drawable.i_gardeneggs), new IngredientsUsed("Ginger", "Ginger, tomatoes, onions, small chilli pepper, yellow pepper, garlic & red peppers blended together are the essential ingredients you need to make your red pepper stew.", C0523R.C0525drawable.i_ginger), new IngredientsUsed("Goat Meat", "Although similar to lamb Goat meat is far healthier and it has far less fat than chicken whilst being higher in protein and iron.", C0523R.C0525drawable.i_goatmeat), new IngredientsUsed("Green Bananas", "Green bananas are bananas used instead of plantain which are only 60% ripe. They make a healthy and delicious porridge dish.", C0523R.C0525drawable.i_greenbananas), new IngredientsUsed("Locust Beans", "Fermented locust beans or Iru in Yoruba enhances the flavour of soups like ogbono or Ewedu. They are pungent smelling and should be frozen for storage. The aroma makes vegetables taste delicious.", C0523R.C0525drawable.i_locustbeans), new IngredientsUsed("Melon Seeds", "it is commonly called egusi leaf This is the main\ningredient in making Egusi.", C0523R.C0525drawable.i_melonseeds), new IngredientsUsed("Okra", "Okra or gumbo is one of the most common African vegetables. It is often enjoyed as a soup thickener and very slippery. Do not store okra for too long (3 days max) and use whilst fresh.", C0523R.C0525drawable.i_okra), new IngredientsUsed("Palm Kernel", "Palm kernel Palm kernel is the fruit seed of the palm fruit, a source of unrefined palm oil.", C0523R.C0525drawable.i_palmkernel), new IngredientsUsed("Periwinkle", "The common periwinkle is an edible small sea snail with a thick shell. A choice addition to garnish all kinds of vegetable soups.", C0523R.C0525drawable.i_periwinkle), new IngredientsUsed("Scent Leaf", "Scent leaf or Efirin in Yoruba is a condiment similar to basil. Shrimps Along with crabs, periwinkles and crayfish, shrimps are another example of a delicacy you can add to enhance richness of your cooking.", C0523R.C0525drawable.i_scentleaf), new IngredientsUsed("Spinach", "Spinach is the vegetable used in making Efo riro. Stockfish Dried stockfish or panla in Yoruba. It is very rich in taste  and fleshy; it also has a lovely aroma in food, mainly used in vegetable soup.", C0523R.C0525drawable.i_spinach), new IngredientsUsed("Stock fish(smoked)", "Like the dried variety Smoked stockfish is far healthier than fresh fish and more succulent in taste. You should soak them in water for at least 2 hrs to make them tender.", C0523R.C0525drawable.i_smokedfish), new IngredientsUsed("Pumpkin Leaves", "Ugu or pumpkin leaves is a vegetable favoured by the Igbo people of Nigeria. Use it to cook Edikai Ikong or add it to Egusi or Ogbono soup for a delicious taste.", C0523R.C0525drawable.i_ugwu), new IngredientsUsed("Yam", "Yam is a highly nutritious tuber plant that is very rich in carbohydrates and can also be boiled, mashed or pounded", C0523R.C0525drawable.i_yam)};
    private String description;
    private int image;
    private String name;

    private IngredientsUsed(String str, String str2, int i) {
        this.name = str;
        this.description = str2;
        this.image = i;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public int getImage() {
        return this.image;
    }

    public String toString() {
        return this.name;
    }
}
