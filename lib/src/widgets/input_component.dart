import 'package:flutter/material.dart';
import 'package:note_taking_app/src/styles/app_styles.dart';
import 'package:note_taking_app/src/utils/colors.dart';

class InputTextComponent extends StatefulWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final Widget? suffixIcon;

  const InputTextComponent({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
    this.validator,
    required TextEditingController controller,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  InputTextComponentState createState() => InputTextComponentState();
}

class InputTextComponentState extends State<InputTextComponent> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: SizedBox(
        width: 345,
        height: 50,
        child: TextFormField(
          obscureText: widget.obscureText,
          controller: _controller,
          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          style: AppStyles.inputTextStyle,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  const BorderSide(color: AppColors.secondaryColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  const BorderSide(color: AppColors.secondaryColor, width: 1),
            ),
            hintText: widget.hintText,
            suffixIcon: widget.suffixIcon,
            //labelText: widget.labelText,
            hintStyle: AppStyles.hintTextStyle,
          ),
          validator: widget.validator,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
