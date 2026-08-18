import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:idhmp/core/screens/cnic_verify_view.dart';
import 'package:idhmp/core/theme/app_colors.dart';
import 'package:idhmp/core/widgets/custom_btn.dart';
import 'package:idhmp/core/widgets/custom_txtfeild.dart';
import 'package:step_progress/step_progress.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
          icon: Icon(Icons.arrow_back_ios_new),
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
              constraints: const BoxConstraints(maxWidth: 400),
              width: MediaQuery.of(context).size.width * 0.9,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StepProgress(
                      totalSteps: 3,
                      currentStep: 0,
                      theme: StepProgressThemeData(
                        activeForegroundColor: AppColors.primary,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Create Account",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Create your secure IDHMP account to manage your healthcare digitally",
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(hintText: "Enter your full name"),
                    SizedBox(height: 20),
                    CustomTextField(hintText: "Enter your Phone number"),
                    SizedBox(height: 20),
                    CustomTextField(hintText: "Enter your Email address"),
                    SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Enter your Password",
                      suffixIcon: Icon(Icons.visibility),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Enter your Confirm password",
                      suffixIcon: Icon(Icons.visibility),
                    ),
                    SizedBox(height: 24),
                    CustomButton(
                      text: "Create Account",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CnicVerifyView(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(color: Colors.black),
                              children: [
                                const TextSpan(text: "I agree to the "),
                
                                TextSpan(
                                  text: "Terms of Service",
                                  style: TextStyle(color: AppColors.primary),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Terms page
                                    },
                                ),
                
                                const TextSpan(text: " and "),
                
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(color: AppColors.primary),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Privacy page
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
