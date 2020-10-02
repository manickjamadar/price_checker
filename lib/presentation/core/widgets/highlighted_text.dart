import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  final String text;
  final String highlight;
  final Color highlightColor;
  final Color textColor;
  final double fontSize;
  const HighlightedText(
      {Key key,
      @required this.text,
      @required this.highlight,
      @required this.highlightColor,
      this.textColor,
      this.fontSize = 18})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultTextColor = Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;
    final textStyle =
        TextStyle(color: textColor ?? defaultTextColor, fontSize: fontSize);
    if (highlight.isEmpty ||
        !text.contains(new RegExp(highlight, caseSensitive: false))) {
      return RichText(
        text: TextSpan(text: text, style: textStyle),
      );
    }
    final processedPart = text.splitMapJoin(
        new RegExp(highlight, caseSensitive: false),
        onMatch: (m) => "*${m.group(0)}*");
    final parts = processedPart.split("*");
    print(parts);
    return RichText(
      text: TextSpan(
          children: parts
              .map((part) => TextSpan(
                  text: part,
                  style: textStyle.copyWith(
                      color: part.contains(
                              new RegExp(highlight, caseSensitive: false))
                          ? highlightColor
                          : textColor)))
              .toList()),
    );
  }
}
