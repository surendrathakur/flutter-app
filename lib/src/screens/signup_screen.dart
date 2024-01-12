import 'package:flutter/material.dart';
import 'package:note_taking_app/src/styles/app_styles.dart';
import 'package:note_taking_app/src/utils/colors.dart';
import 'package:note_taking_app/src/utils/constants.dart';
import 'package:note_taking_app/src/utils/validation_utils.dart';
import 'package:note_taking_app/src/widgets/common_button.dart';
import 'package:note_taking_app/src/widgets/input_component.dart';

/*
 * Define sign up screen component
 */
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

/*
 *  Define sign up state class to handle states
 */
class SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

// Function to handle the Login button click
  void goToLogin(BuildContext context) {
    // Navigate back to the previous screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      AppConstants.appLogo,
                      alignment: Alignment.center,
                    )),
                const Text(
                  AppConstants.textSignUp,
                  style: AppStyles.headingTextStyle,
                ),
                const SizedBox(height: 20),
                InputTextComponent(
                  hintText: AppConstants.textFName,
                  labelText: AppConstants.textFName,
                  controller: fullNameController,
                  validator: Validators.validateFullName,
                ),
                InputTextComponent(
                  hintText: AppConstants.textEmail,
                  labelText: AppConstants.textEmail,
                  controller: emailController,
                  validator: Validators.validateEmail,
                ),
                InputTextComponent(
                  hintText: AppConstants.textPassword,
                  labelText: AppConstants.textPassword,
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  validator: Validators.validatePassword,
                ),
                InputTextComponent(
                  hintText: AppConstants.textConfPassword,
                  labelText: AppConstants.textConfPassword,
                  controller: confirmPasswordController,
                  obscureText: !isConfirmPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),
                  validator: Validators.validatePassword,
                ),
                const SizedBox(height: 30),
                CommonButton(
                  text: AppConstants.textSignUp,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // All fields are valid, proceed with signup logic
                      // For example, you might send a request to your backend API
                      // with the entered user data.
                      // You can access the entered values like this:
                      // fullNameController.text
                      // emailController.text
                      // passwordController.text
                      // confirmPasswordController.text
                    }
                  },
                  buttonStyle: AppStyles.buttonStyle,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 1,
                      color: AppColors.colorPlaceHolde,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    const Text(AppConstants.textOr,
                        style: AppStyles.lightTextStyle),
                    Container(
                      width: 140,
                      height: 1,
                      color: AppColors.colorPlaceHolde,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CommonButton(
                    text: AppConstants.textContinueWithGoogle,
                    onPressed: () {
                      // Handle button press
                    },
                    buttonStyle: AppStyles.lightBgButtonStyle,
                    textStyle: AppStyles.buttonTextStyle,
                    customIconPath: AppConstants.gmailIcon),
                const SizedBox(height: 20),
                CommonButton(
                    text: AppConstants.textContinueWithFb,
                    onPressed: () {
                      // Handle button press
                    },
                    buttonStyle: AppStyles.lightBgButtonStyle,
                    textStyle: AppStyles.buttonTextStyle,
                    customIconPath: AppConstants.fbIcon),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppConstants.textHaveAccount,
                        style: AppStyles.dontAccountTextStyle),
                    TextButton(
                      onPressed: () {
                        // Handle "Log In" click
                        goToLogin(context);
                      },
                      child: const Text(
                        AppConstants.textLogin,
                        style: AppStyles.createAccountTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
