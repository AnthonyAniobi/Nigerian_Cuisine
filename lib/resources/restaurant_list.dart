import 'package:nigerian_cuisine/models/new_images.dart';

class Restaurants {
  final String name;
  final String imageid;
  final String description;

  Restaurants(this.name, this.imageid, this.description);

  static List<Restaurants> list = [
    Restaurants('Some name', NewImages.restaurants[0],
        'some description for the first restaurant'),
    Restaurants('Some name', NewImages.restaurants[1],
        'some description for the first restaurant'),
    Restaurants('Some name', NewImages.restaurants[2],
        'some description for the first restaurant'),
    Restaurants('Some name', NewImages.restaurants[3],
        'some description for the first restaurant'),
  ];
}
