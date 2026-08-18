import 'package:flutter/material.dart';
import 'package:idhmp/core/screens/home_view.dart';
import 'package:idhmp/core/theme/app_colors.dart';
import 'package:idhmp/core/widgets/custom_btn.dart';
import 'package:idhmp/core/widgets/custom_txtfeild.dart';
import 'package:idhmp/core/widgets/label_text.dart';
import 'package:step_progress/step_progress.dart';

class ProfileSetupView extends StatelessWidget {
  const ProfileSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/screensbg.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              constraints: const BoxConstraints(maxWidth: 400),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Scrollbar(
                thumbVisibility: false,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      StepProgress(
                        totalSteps: 3,
                        currentStep: 2,
                        theme: StepProgressThemeData(
                          activeForegroundColor: AppColors.primary,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Setup Your Health Profile",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Add important health information to make your digital healthcare experience more useful.",
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: AppColors.primary.withOpacity(0.1),
                            child: Icon(
                              Icons.person_outline,
                              size: 45,
                              color: AppColors.primary,
                            ),
                          ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.primary,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomLabel(text: "Date of Birth"),
                      ),
                      SizedBox(height: 10),
                      CustomTextField(hintText: "mm/dd/yy"),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomLabel(text: "Gender"),
                      ),
                      SizedBox(height: 10),
                      CustomTextField(hintText: "Select Gender"),
                      SizedBox(height: 16),
                      Divider(),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomLabel(text: "Blood Group"),
                      ),
                      SizedBox(height: 10),
                      CustomTextField(hintText: "mm/dd/yy"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomLabel(text: "Height cm"),
                                const SizedBox(height: 8),
                                CustomTextField(hintText: "Optional"),
                              ],
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomLabel(text: "Weight kg"),
                                const SizedBox(height: 8),
                                CustomTextField(hintText: "Optional"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(),
                      SizedBox(height: 20),
                      CustomLabel(text: "Allergies"),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText: "List any allergies (Optional)",
                        maxLine: 3,
                      ),
                      SizedBox(height: 10),
                      CustomLabel(text: "Current Conditions"),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText:
                            "List any ongoing medical confitions (Optional)",
                        maxLine: 3,
                      ),
                      SizedBox(height: 10),
                      CustomLabel(text: "Current Medications"),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText:
                            "List medications you are currently taking (Optional)",
                        maxLine: 3,
                      ),
                      SizedBox(height: 24),
                      CustomButton(text: "Save & Continue", onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeView()));
                      }),
                      SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                color: AppColors.primary,
                                width: 1,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Skip For Now",
                            style: TextStyle(
                              fontSize: 17,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
