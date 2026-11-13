import 'package:evently_app/Theme/app_colors.dart';
import 'package:evently_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    super.key,
    this.label,
    required this.imagePathPrefix,
    this.isPassowrd = false, this.vali,
    
  });
  final String? label;
  final String imagePathPrefix;
  final bool isPassowrd;
  final String? Function(String?)? vali;
  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  late bool passWordEnabled = widget.isPassowrd;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
      child: TextFormField(
        validator: widget.vali,
        obscureText: passWordEnabled,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: AppTextStyles.styleS16W500(
            color: Theme.of(context).hoverColor,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              widget.imagePathPrefix,
              colorFilter: ColorFilter.mode(
                Theme.of(context).hoverColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: widget.isPassowrd
              ? InkWell(
                  onTap: () {
                    passWordEnabled = !passWordEnabled;
                    setState(() {});
                  },
                  child: Icon(
                    passWordEnabled
                        ? Icons.visibility_off
                        : Icons.remove_red_eye,
                        color: Theme.of(context).hoverColor,
                  ),
                )
              : null,
          border: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(),
          errorBorder: _border(color: AppColors.errorColor),
          errorStyle: AppTextStyles.styleS14W400(color: AppColors.errorColor)
        ),
      ),
    );
  }

  InputBorder _border({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Theme.of(context).hintColor),
    );
  }
}
