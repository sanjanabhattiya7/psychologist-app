class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: "assets/images/onboarding-1.png",
    title: "Welcome to WellHope",
    description: "Your journey to better mental health begins here.",
  ),

  OnboardingModel(
    image: "assets/images/onboarding-2.png",
    title: "Find Expert Therapists",
    description: "Connect with certified psychologists anytime.",
  ),

  OnboardingModel(
    image: "assets/images/onboarding-3.png",
    title: "Book Appointments",
    description: "Schedule sessions with ease.",
  ),
  OnboardingModel(
    image: "assets/images/onboarding-4.png",
    title: "Book Appointments",
    description: "Schedule sessions with ease.",
  ),
  OnboardingModel(
    image: "assets/images/onboarding-5.png",
    title: "Book Appointments",
    description: "Schedule sessions with ease.",
  ),
  OnboardingModel(
    image: "assets/images/onboarding-6.png",
    title: "Book Appointments",
    description: "Schedule sessions with ease.",
  ),
];