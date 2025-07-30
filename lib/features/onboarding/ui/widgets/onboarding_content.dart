import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3_drop_me_onboarding/core/helpers/spacing.dart';
import 'package:task3_drop_me_onboarding/core/theming/text_styles.dart';
import 'package:task3_drop_me_onboarding/features/onboarding/model/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingContent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(model.imagePath),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.title,
                  style: TextStyles.font16GreenBold.copyWith(
                    fontSize: 24.sp
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(16),
                Text(
                  model.description,
                  style: TextStyles.font16GreenBold,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
