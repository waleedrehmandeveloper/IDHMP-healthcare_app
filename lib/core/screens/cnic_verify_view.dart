import 'package:flutter/material.dart';
import 'package:idhmp/core/screens/home_view.dart';
import 'package:idhmp/core/screens/profile_setup.dart';
import 'package:idhmp/core/theme/app_colors.dart';
import 'package:idhmp/core/widgets/custom_btn.dart';
import 'package:idhmp/core/widgets/custom_txtfeild.dart';
import 'package:step_progress/step_progress.dart';

class CnicVerifyView extends StatelessWidget {
  const CnicVerifyView({super.key});

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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StepProgress(
                      totalSteps: 3,
                      currentStep: 1,
                      theme: StepProgressThemeData(
                        activeForegroundColor: AppColors.primary,
                      ),
                    ),
                    // SizedBox(height: 10),
                    Image.asset(
                      'assets/images/securityLogo.png',
                      width: 200,
                      height: 200,
                    ),
                    // SizedBox(height: 16),
                    Text(
                      "Verify Your Identity",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Enter your secure IDHMP account to manage your healthcare digitally",
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(hintText: "XXXX-XXXX-XXXX"),
                    SizedBox(height: 20),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.08),
                        border: Border.all(color: AppColors.primary, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.lock_outline, color: AppColors.primary),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Your identity information is securely protected",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    CustomButton(
                      text: "Verify CNIC",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileSetupView(),
                          ),
                        );
                      },
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
