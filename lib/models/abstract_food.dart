abstract class AbstractFoodList {
  String description;
  String imageId;
  String ingredients;
  String name;
  AbstractFoodList(this.name, this.imageId, this.description, this.ingredients);
}

abstract class AbstractFoodProcedure {
  String first;
  String imageId;
  String second;
  AbstractFoodProcedure(this.first, this.imageId, this.second);
}
