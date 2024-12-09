import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:emtrade_tech_test/common/helper/string_extension.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/typhography/foundation/text_styles.dart';

class BAForms extends StatefulWidget {
  final TextFormType textFormType;
  final AutovalidateMode? autovalidateMode;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final double height;
  final String? placeholder;
  final int minLines;
  final int maxLines;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLength;
  final bool showCounterText;
  final bool autofocus;
  final void Function(String?)? onSaved;
  final TextAlign textAlign;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final VoidCallback? onFinishEditing; // New parameter
  final String? errorText;

  const BAForms.phone({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.validator,
    this.onTap,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.phone,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.phone;

  const BAForms.email({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.email,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.emailAddress;

  const BAForms.password({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.password,
        maxLines = 1,
        minLines = 1,
        obscureText = true,
        textInputType = TextInputType.visiblePassword;

  const BAForms.text({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.text,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.text;

  const BAForms.textArea({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.maxLines = 3,
    this.minLines = 3,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.textArea,
        obscureText = false,
        textInputType = TextInputType.multiline;

  const BAForms.number({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.validator,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.number,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.number;

  const BAForms.currency({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.validator,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.number,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.number;

  const BAForms.alphabetic({
    super.key,
    this.controller,
    this.autovalidateMode,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.placeholder,
    this.onChanged,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.maxLength,
    this.showCounterText = false,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.focusNode,
    this.onFinishEditing, // New parameter
    this.errorText,
  })  : textFormType = TextFormType.alphabetic,
        obscureText = false,
        maxLines = 1,
        minLines = 1,
        textInputType = TextInputType.name;

  @override
  // ignore: library_private_types_in_public_api
  _BAFormsState createState() => _BAFormsState();
}

class _BAFormsState extends State<BAForms> {
  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_updateState);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_updateState);
    super.dispose();
  }

  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      style: AppTextStyles.titleMediumMedium,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      autovalidateMode: widget.autovalidateMode,
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      onFieldSubmitted: widget.onFieldSubmitted,
      onEditingComplete: widget.onFinishEditing,
      textCapitalization: TextCapitalization.sentences,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: widget.textInputAction,
      autofocus: widget.autofocus,
      onSaved: widget.onSaved,
      textAlign: widget.textAlign,
      cursorColor: AppColors.darkPrimary,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkPrimary,
          ),
        ),
        hintText: widget.placeholder,
        hintStyle: widget.hintStyle ??
            AppTextStyles.titleMediumRegular
                .copyWith(color: AppColors.darkPrimary),
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: widget.prefixIcon,
              )
            : null,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: widget.suffixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(top: 10),
                child: widget.suffixIcon,
              )
            : null,
        suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        counterText: widget.maxLength != null && widget.showCounterText == true
            ? '${widget.controller!.text.length}/${widget.maxLength}'
            : '',
        counterStyle:
            AppTextStyles.bodyMediumBold.copyWith(color: AppColors.blackLoader),
      ),
      inputFormatters: _getInputFormatters(),
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
    );
  }

  List<TextInputFormatter>? _getInputFormatters() {
    if (widget.textFormType == TextFormType.phone) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
        FilteringTextInputFormatter.deny(RegExp(r'^62+')),
        LengthLimitingTextInputFormatter(13),
      ];
    }
    if (widget.textFormType == TextFormType.number) {
      return [
        FilteringTextInputFormatter.digitsOnly,
      ];
    }
    if (widget.textFormType == TextFormType.currency) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        NumberTextInputFormatter(),
      ];
    }
    if (widget.textFormType == TextFormType.alphabetic) {
      return [
        SentenceCapitalizationInputFormatter(),
        FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
      ];
    }
    return null;
  }
}

class SentenceCapitalizationInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    if (text.isNotEmpty) {
      text = text[0].toUpperCase() + text.substring(1);

      for (int i = 1; i < text.length; i++) {
        if (text[i - 1] == '.' && i + 1 < text.length) {
          text = text.substring(0, i + 1) +
              text[i + 1].toUpperCase() +
              text.substring(i + 2);
        }
      }
    }

    return newValue.copyWith(
      text: text,
      selection: newValue.selection,
    );
  }
}

enum TextFormType {
  password,
  email,
  text,
  phone,
  textArea,
  number,
  currency,
  alphabetic
}
