import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/src/styles/app_styles.dart';
import 'package:note_taking_app/src/utils/colors.dart';
import 'package:note_taking_app/src/utils/constants.dart';
import 'package:note_taking_app/src/widgets/common_button.dart';
import 'package:note_taking_app/src/widgets/input_component.dart';

/*
 * Define login screen component
 */
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

/*
 *  Define Login state class to handle states
 */
class LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

/*
 * Go to sign up screen
 */
  void handleCreateAccountClick(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }

/*
 * Handle login buttom click
 */
  void handleLogin() {
    if (kDebugMode) {
      print('Email: ${emailController.text}');
    }
    if (_formKey.currentState!.validate()) {
       Navigator.pushNamed(context, '/home');
      // Form is valid, process login
      if (kDebugMode) {
        print('Email: ${emailController.text}');
      }
      if (kDebugMode) {
        print('Password: ${passwordController.text}');
      }

      // Simulate login success
      // Navigate to the next screen or perform further actions
    } else {
      // Form is invalid, show error message or handle accordingly
    }
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      AppConstants.appLogo,
                      alignment: Alignment.center,
                    )),
                const Text(
                  AppConstants.textLogin,
                  style: AppStyles.headingTextStyle,
                ),
                const SizedBox(height: 20),
                InputTextComponent(
                  key: const Key(AppConstants.emailField),
                  obscureText: false,
                  hintText: AppConstants.textEmail,
                  labelText: AppConstants.textEmail,
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      // Handle email changes
                      emailController.text = value;
                    });
                  },
                  //validator: Validators.validateEmail
                ),
                InputTextComponent(
                  key: const Key(AppConstants.passwordField),
                  obscureText: isPasswordVisible,
                  hintText: AppConstants.textPassword,
                  labelText: AppConstants.textPassword,
                  controller: passwordController,
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
                  onChanged: (value) {
                    setState(() {
                      // Handle password changes
                    });
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isChecked,
                      checkColor: AppColors.whiteColor,
                      activeColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Adjust the border radius as needed
                      ),
                      onChanged: (bool? value) {
                        // Handle checkbox state change
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 8),
                    const Text(AppConstants.textStayConnected,
                        style: AppStyles.lightTextStyle),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        // Handle "Forgot Password" click
                        if (kDebugMode) {
                          print(AppConstants.textForgotPassword);
                        }
                      },
                      child: const Text(
                        AppConstants.textForgotPassword,
                        style: AppStyles.lightTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CommonButton(
                  text: AppConstants.textBtnLogin,
                  onPressed: handleLogin,
                  buttonStyle: AppStyles.buttonStyle,
                ),
                const SizedBox(height: 30),
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
                const SizedBox(height: 30),
                CommonButton(
                  text: AppConstants.textContinueWithGoogle,
                  onPressed: () {
                    // Handle "Continue With Google" click
                  },
                  buttonStyle: AppStyles.lightBgButtonStyle,
                  textStyle: AppStyles.buttonTextStyle,
                  customIconPath: AppConstants.gmailIcon,
                ),
                const SizedBox(height: 20),
                CommonButton(
                  text: AppConstants.textContinueWithFb,
                  onPressed: () {
                    // Handle "Continue With Facebook" click
                  },
                  buttonStyle: AppStyles.lightBgButtonStyle,
                  textStyle: AppStyles.buttonTextStyle,
                  customIconPath: AppConstants.fbIcon,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppConstants.textNotAccount,
                        style: AppStyles.dontAccountTextStyle),
                    TextButton(
                      onPressed: () {
                        handleCreateAccountClick(context);
                      },
                      child: const Text(
                        AppConstants.textCreateAccount,
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
