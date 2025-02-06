import "package:flutter/material.dart";
import "package:timely/core/configs/theme/app_colors.dart";

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: AppColors.input,
          hintStyle: const TextStyle(fontSize: 14, color: Colors.black45),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.inputBorder, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.inputBorder, width: 1),
          ),
          prefixIcon: Icon(icon, color: AppColors.iconDisabled),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
