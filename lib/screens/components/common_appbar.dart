import 'package:flutter/material.dart';

class GradientAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Color> gradientColor;
  final VoidCallback? onBackPressed;

  const GradientAppbar(
      {super.key,
        required this.title,
        required this.gradientColor,
        required this.onBackPressed});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 60.0,
          child: Row(
            children: [
              IconButton(
                onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                  child: GradientText(
                      text: title,
                      gradientColors: gradientColor)) // Use `title` and `gradientColor`
            ],
          ),
        ));
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;
  final double fontSize;
  final FontWeight fontWeight;

  const GradientText(
      {super.key,
        required this.text,
        required this.gradientColors,
        this.fontSize = 20,
        this.fontWeight = FontWeight.w500});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(Rect.fromLTWH(0, 0, 200, fontSize)),
      ),
    );
  }
}
