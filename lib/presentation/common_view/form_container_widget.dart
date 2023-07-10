import 'package:flutter/material.dart';

import '../resources/styles/app_colors.dart';
import '../resources/styles/app_text_style.dart';
class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? placeHolder;
  final bool? enable;
  final void Function(String)? onSubmit;
  final String? Function(String?)? validator;


  const FormContainerWidget(
      {Key? key,
        this.controller,
        this.obscureText = false,
        this.prefixIcon,
        this.placeHolder,
        this.suffixIcon,
        this.onSubmit,
        this.enable,
        this.validator
      })
      : super(key: key);

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      enabled: widget.enable,
      obscureText: widget.obscureText,
      controller: widget.controller,
      onFieldSubmitted: widget.onSubmit,
      decoration: InputDecoration(
          hintStyle: AppTextStyle.baseBook.copyWith(
              color: AppColors.white400
          ),
          hintText: widget.placeHolder,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.white100,
                  width: 1.0
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
          border:  OutlineInputBorder(
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
