import 'package:flutter/material.dart';

class CustomStackTextField extends StatefulWidget {
  final String hintText;
  final String iconPath; // иконка слева
  final String? suffixIconPath; // иконка справа (необязательно)
  final bool obscureText;
  final Color defaultBorderColor;
  final Color focusBorderColor;
  final Color defaultIconColor;
  final Color focusIconColor;

  const CustomStackTextField({
    super.key,
    required this.hintText,
    required this.iconPath,
    this.suffixIconPath,
    this.obscureText = false,
    this.defaultBorderColor = Colors.grey,
    this.focusBorderColor = const Color(0xffF2C94C),
    this.defaultIconColor = Colors.grey,
    this.focusIconColor = const Color(0xffF2C94C),
  });

  @override
  State<CustomStackTextField> createState() => _CustomStackTextFieldState();
}

class _CustomStackTextFieldState extends State<CustomStackTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isPasswordVisible = false; // для скрытия/отображения пароля

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        TextField(
          focusNode: _focusNode,
          obscureText: widget.obscureText && !_isPasswordVisible,
          style: const TextStyle(
            fontFamily: "Poppins", // 👈 вводимый текст шрифтом Poppins
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300, // 👈 hint остаётся тонким
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: _isFocused
                    ? widget.focusBorderColor
                    : widget.defaultBorderColor,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: widget.focusBorderColor, width: 2),
            ),
            contentPadding: const EdgeInsets.only(
              left: 48,
              right: 48,
            ), // место для иконок
          ),
        ),

        // Левая иконка
        Positioned(
          left: 12,
          child: Image.asset(
            widget.iconPath,
            width: 22,
            height: 16,
            color: _isFocused ? widget.focusIconColor : widget.defaultIconColor,
          ),
        ),

        // Правая иконка (например, показать/скрыть пароль)
        if (widget.suffixIconPath != null)
          Positioned(
            right: 12,
            child: GestureDetector(
              onTap: () {
                if (widget.obscureText) {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                }
              },
              child: Image.asset(
                widget.suffixIconPath!,
                width: 22,
                height: 16,
                color: _isFocused
                    ? widget.focusIconColor
                    : widget.defaultIconColor,
              ),
            ),
          ),
      ],
    );
  }
}
