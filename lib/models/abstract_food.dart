abstract class AbstractFoodList {
  String description;
  String imageId;
  String ingredients;
  String name;
  AbstractFoodList(this.name, this.imageId, this.description, this.ingredients);
}

abstract class AbstractFoodProcedure {
  String first;
  String second;
  String imageId;
  AbstractFoodProcedure(this.first, this.second, this.imageId);
}
