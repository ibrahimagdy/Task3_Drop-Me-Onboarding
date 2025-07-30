class OnboardingModel {
  final String imagePath;
  final String title;
  final String description;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

final List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    imagePath: 'assets/images/recycle.jpg',
    title: 'Meet the RVM',
    description: 'The Reverse Vending Machine lets you recycle plastic bottles and cans in a smart and rewarding way.',
  ),
  OnboardingModel(
    imagePath: 'assets/images/qr_code.jpg',
    title: 'Scan QR Code',
    description: 'Use the Drop Me app to scan the RVM QR code and start your recycling session easily.',
  ),
  OnboardingModel(
    imagePath: 'assets/images/earn_points.jpg',
    title: 'Earn Rewards',
    description: 'Every time you recycle, you earn points. Redeem them for real-life benefits!',
  ),
];