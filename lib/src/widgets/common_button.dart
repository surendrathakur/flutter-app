import 'package:flutter/material.dart';
import 'package:note_taking_app/src/styles/app_styles.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle; // Allow passing a dynamic ButtonStyle
  final TextStyle? textStyle; // Allow passing a dynamic ButtonStyle
  final String? customIconPath; // Path to the custom PNG icon

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.textStyle,
    this.customIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 45,
      child: TextButton(
        onPressed: onPressed,
        style: buttonStyle ??
            _defaultButtonStyle, // Use the provided style or fallback to the default style
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (customIconPath != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.asset(
                customIconPath!,
                width: 26, // Set the width as needed
                height: 26, // Set the height as needed
              ),
            ),
          ],
          Text(
            text,
            style: textStyle ?? AppStyles.defaultButtonTextStyle,
          )
        ]),
      ),
    );
  }

  // Define a default button style if none is provided
  static final ButtonStyle _defaultButtonStyle = TextButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 43, 209, 126),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  );
}
