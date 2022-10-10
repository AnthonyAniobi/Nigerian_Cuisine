class MealTime {
  static String currentMeal() {
    final DateTime time = DateTime.now();
    if (time.hour < 5) {
      return '😴';
    } else if (time.hour >= 5 && time.hour < 12) {
      return 'It\'s Breakfast Time!';
    } else if (time.hour >= 12 && time.hour < 5) {
      return 'It\'s Lunch Time!';
    } else {
      return 'It\'s dinner Time!';
    }
  }
}
