import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task3_drop_me_onboarding/core/theming/color_manger.dart';
import 'package:task3_drop_me_onboarding/core/theming/text_styles.dart';
import 'package:task3_drop_me_onboarding/core/widgets/app_text_button.dart';
import 'package:task3_drop_me_onboarding/features/onboarding/model/onboarding_model.dart';
import 'widgets/onboarding_page_view_builder.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onNextPage() async {
    if (_currentPage < onboardingPages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('onboarding_completed', true);
      // Navigate to Login or Home screen
    }
  }

  @override
  Widget build(BuildContext context) {
    final onboardingList = onboardingPages;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      'Skip',
                      style: TextStyles.font16GreenBold,
                    ),
                  ),
                ],
              ),
            ),
            OnboardingPageViewBuilder(
              controller: _controller,
              onboardingList: onboardingList,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingList.length,
                    (index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: 9.w,
                  height: 9.h,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? ColorsManager.mainGreen
                        : ColorsManager.lightGreen,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: AppTextButton(
                textButton: _currentPage == onboardingList.length - 1
                    ? 'Done'
                    : 'Next',
                onPressed: _onNextPage,
                textColor: ColorsManager.white,
                backgroundColor: ColorsManager.mainGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
