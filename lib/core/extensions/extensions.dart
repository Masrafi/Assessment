//calculate the calorie
extension CalorieExtension on String {
  double calculateCalories({
    required double weightKg,
    required double heightCm,
    required int age,
  }) {
    final gender = toLowerCase().trim();

    if (gender == 'male') {
      return 666.47 + (13.75 * weightKg) + (5 * heightCm) - (6.75 * age);
    } else if (gender == 'female') {
      return 655.1 + (9.56 * weightKg) + (1.85 * heightCm) - (4.67 * age);
    } else {
      throw ArgumentError('Invalid gender: must be "male" or "female"');
    }
  }
}

// calculate the percent
extension PercentageAway on num {
  double percentageAwayFrom(num target) {
    if (target == 0) return 0;
    return ((target - this) / target * 100).clamp(0, 100);
  }
  double percentageTowards(num target) {
    if (target == 0) return 100;
    return ((this / target) * 100).clamp(0, 100);
  }
}
