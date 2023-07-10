import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
class PasswordContainer extends StatefulWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? placeHolder;
  final void Function(String)? onSubmit;
  final String? Function(String?)? validator;
  const PasswordContainer({Key? key,
    this.controller,
    this.prefixIcon,
    this.placeHolder,
    this.onSubmit,
    this.validator
  }) : super(key: key);

  @override
  State<PasswordContainer> createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: obscureText,
      controller: widget.controller,
      onFieldSubmitted: widget.onSubmit,
      decoration: InputDecoration(
          hintStyle: AppTextStyle.baseBook.copyWith(
              color: AppColors.white400
          ),
          hintText: widget.placeHolder,
          prefixIcon: widget.prefixIcon,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              color: AppColors.white400,
            ),
            onPressed: ()=> setState(() {
              obscureText = !obscureText;
            }),
          ),
          border:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.white100,
                  width: 1.0
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
          enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.white100,
                  width: 1.0
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
          errorBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.red300,
                  width: 1.0
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.blue300,
                  width: 1.0
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))
          )
      ),
    );
  }
}
