import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name.snakeCase()}}/src/config/config.dart';
import 'package:{{project_name.snakeCase()}}/src/core/utils/util_extensions.dart';

typedef Validator = String? Function(String? value);

class FilledTextFieldCW extends StatelessWidget {
  const FilledTextFieldCW({
    super.key,
    this.maxLength,
    this.controller,
    this.obscureText = false,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.errorText,
    this.suffixIcon,
    this.validator,
    this.focusNode,
    this.counterText = '',
    this.readOnly = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.inputFormatters,
    this.fillColor,
    this.onTap,
    this.onFieldSubmitted,
  });
  final int? maxLength;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool obscureText;
  final String hintText;
  final String? errorText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final Validator? validator;
  final String counterText;
  final bool readOnly;
  final int minLines;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final dynamic Function()? onTap;
  final dynamic Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final hintTextStyle = context.theme.textTheme.labelSmall;
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
    );

    return TextFormField(
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      maxLength: maxLength ?? 200,
      maxLines: maxLines,
      minLines: minLines,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        errorText: errorText,
        counterStyle: context.theme.textTheme.labelSmall,
        errorStyle: context.theme.textTheme.labelSmall!.copyWith(
          color: Colors.pink,
        ),
        counterText: '',
        hintText: hintText,
        hintStyle: hintTextStyle,
        suffixIcon: suffixIcon,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 10,
        ),
        isDense: true,
        errorMaxLines: 1,
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: fillColor ?? context.theme.colorScheme.surface,
      ),
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.disabled,
      onSaved: onSaved,
      validator: validator,
      readOnly: readOnly,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
