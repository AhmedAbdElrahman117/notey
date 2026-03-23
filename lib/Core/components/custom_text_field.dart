import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.icon,
    this.validator,
    this.keyboardType,
    this.showPasswordButton = false,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.onChanged,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final IconData icon;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final bool? showPasswordButton;
  final bool? obscureText;
  final void Function(String value)? onFieldSubmitted;
  final void Function(String value)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode focusNode = FocusNode();
  bool isFocused = false;
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.obscureText!;
    focusNode.addListener(
      () {
        setState(() {
          isFocused = focusNode.hasFocus;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.logo,
          ),
        ),
        floatingLabelStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
        hintText: widget.hintText,
        labelText: widget.labelText,
        prefixIcon: Icon(
          widget.icon,
          color: AppColors.logo,
        ),
        suffixIcon: showPasswordButton(),
      ),
      validator: widget.validator,
      obscureText: obscureText,
      obscuringCharacter: '*',
      cursorColor: AppColors.logo,
      cursorOpacityAnimates: true,
      keyboardType: widget.keyboardType,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  Widget? showPasswordButton() {
    if (widget.showPasswordButton! && isFocused) {
      return triggerShowPassword();
    } else {
      return null;
    }
  }

  Padding triggerShowPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: AnimatedCrossFade(
        firstChild: IconButton(
          onPressed: triggerObsecure,
          icon: Icon(
            FontAwesomeIcons.eye,
          ),
        ),
        secondChild: IconButton(
          onPressed: triggerObsecure,
          icon: Icon(
            FontAwesomeIcons.eyeSlash,
          ),
        ),
        crossFadeState: obscureText
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: 250.milliseconds,
      ),
    );
  }

  void triggerObsecure() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
