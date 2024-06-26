import 'package:flutter/material.dart';
import 'package:kub_app/utils/appTheme.dart';

class CtextField extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double raduis;
  final double? height;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final bool? obscureText;

  const CtextField({
    super.key,
    this.backgroundColor,
    required this.hint,
    this.raduis = 15.0,
    this.prefixIcon,
    this.textInputType,
    this.controller,
    this.obscureText,
    this.height,
    required String? Function(dynamic value) validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
            color: AppTheme.color.backgroundTextField,
            fontSize: 16,
          ),
          fillColor: AppTheme.color.backgroundTextField,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(raduis),
          ),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
