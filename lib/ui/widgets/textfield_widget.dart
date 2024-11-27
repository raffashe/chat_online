import 'package:chat_online/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.onChanged, this.hintText, this.focusNode});

  final void Function(String)? onChanged;
  final String? hintText;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      focusNode: focusNode,
      style: small.copyWith(color: accent),
      cursorColor: accent,
      decoration: InputDecoration(
          filled: true,
          fillColor: bg,
          hintText: hintText,
          hintStyle: small.copyWith(color: txtInput),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none)),
    );
  }
}
