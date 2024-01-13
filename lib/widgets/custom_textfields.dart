import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opentruth/helper/mySize.dart';
import 'package:opentruth/helper/theme_helper.dart';

class CustomTextField13 extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final int? maxLines;
  final int? minLines;
  final double? radius;
  final FocusNode? focusNode;
  final Color textColor;
  final bool? showCursor;
  final bool readOnly;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Color fillColor;
  final List<TextInputFormatter> inputFormatter;
  static const Color fillColorDefaultValue = Color(0xffF0F0F0);
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final Color? borderColor;

  const CustomTextField13({
    super.key,
    this.onTap,
    this.validator,
    this.obscureText = false,
    this.autoValidateMode,
    this.title,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines,
    this.showCursor,
    this.readOnly = false,
    this.hintText,
    this.fillColor = fillColorDefaultValue,
    this.prefixIcon,
    this.sufixIcon,
    this.textColor = Colors.black54,
    this.onChanged,
    this.focusNode,
    this.inputFormatter = const <TextInputFormatter>[],
    this.radius = 10.0,
    this.borderColor = ThemeColors.grey3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : Container(
                margin: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ThemeColors.grey2,
                  ),
                ),
              ),
        TextFormField(
          focusNode: focusNode,
          onChanged: onChanged,
          showCursor: showCursor,
          readOnly: readOnly,
          minLines: minLines,
          maxLines: maxLines,
          onTap: onTap,
          autovalidateMode: autoValidateMode,
          obscureText: obscureText,
          validator: validator,
          inputFormatters: inputFormatter,
          cursorColor: ThemeColors.mainColor,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w400,
            fontSize: MySize.size14,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor!),
              borderRadius: BorderRadius.all(
                Radius.circular(radius!),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor!),
              borderRadius: BorderRadius.all(
                Radius.circular(radius!),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius!),
              ),
              borderSide: BorderSide(color: borderColor!),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius!),
              ),
              borderSide: const BorderSide(color: ThemeColors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius!),
              ),
              borderSide: const BorderSide(color: ThemeColors.red),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: ThemeColors.grey1,
                fontSize: 12,
                fontWeight: FontWeight.w400),
            isDense: true,
            fillColor: fillColor,
            filled: true,
            suffixIcon: sufixIcon,
            contentPadding: const EdgeInsets.fromLTRB(13, 17, 13, 17),
          ),
          controller: controller,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}

class CountryFlagNumberTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? initialvalue;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final ValueChanged<CountryCode>? onChanged;
  final bool? showCursor;
  final bool readOnly;
  final bool enabled;
  final String? title;
  final String? hintText;
  final Color? borderColor;

  const CountryFlagNumberTextField(
      {super.key,
      this.validator,
      this.autovalidateMode,
      this.controller,
      this.initialvalue,
      this.keyboardType,
      this.onChanged,
      this.showCursor,
      this.readOnly = false,
      this.enabled = true,
      this.title,
      this.hintText,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : Container(
                margin: const EdgeInsets.only(bottom: 3, left: 2, right: 2),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.grey2,
                  ),
                ),
              ),
        TextFormField(
          showCursor: showCursor,
          readOnly: readOnly,
          autovalidateMode: autovalidateMode,
          validator: validator,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'\d')),
          ],
          style: const TextStyle(
              color: ThemeColors.grey2,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: hintText ?? "",
            hintStyle: const TextStyle(fontSize: 12, color: ThemeColors.grey1),
            prefixIcon: Container(
              margin: const EdgeInsets.fromLTRB(1, 1, 10, 1),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
              ),
              child: Container(
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CountryCodePicker(
                  enabled: enabled,
                  onChanged: onChanged,
                  flagWidth: 25,
                  initialSelection: initialvalue,
                  textStyle:
                      const TextStyle(fontSize: 12, color: ThemeColors.black1),
                  showFlagDialog: true,
                  // showDropDownButton: true,
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(6.5, 12, 6.5, 12),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor!),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor!),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: borderColor!),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: ThemeColors.red),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: ThemeColors.red),
            ),
          ),
          controller: controller,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}

class CountryFlagTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autoValidateMode;
  final ValueChanged<CountryCode>? onChanged;
  final bool asterisk;
  final String? title;

  const CountryFlagTextField(
      {super.key,
      this.validator,
      this.autoValidateMode,
      this.controller,
      this.initialValue,
      this.keyboardType,
      this.onChanged,
      this.title,
      this.asterisk = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : RichText(
                text: TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff101817),
                  ),
                  children: [
                    (asterisk)
                        ? const TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red, fontSize: 16.0),
                          )
                        : const TextSpan(text: '')
                  ],
                ),
              ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffFFFFFF),
          ),
          child: CountryCodePicker(
            onChanged: onChanged,
            initialSelection: initialValue,
            textStyle: const TextStyle(
              color: Color(0xff828A89),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
            alignLeft: true,
            flagWidth: 32,
            showDropDownButton: true,
          ),
        ),
      ],
    );
  }
}
