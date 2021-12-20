import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

final defaultStyle = MarkdownStyleSheet(
  h1: const TextStyle(fontSize: 54),
  h2: const TextStyle(fontSize: 32),
  p: const TextStyle(fontSize: 24),
  code: const TextStyle(fontSize: 16),
  codeblockPadding: const EdgeInsets.all(16),
  listBullet: const TextStyle(fontSize: 24),
);

MarkdownStyleSheet defaultTitleStyle(BuildContext context) {
  return defaultStyle.copyWith(
    h1: const TextStyle(
      fontSize: 64,
      color: Colors.white,
    ),
    h1Padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height / 5 * 2,
    ),
    p: const TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
    pPadding: const EdgeInsets.only(
      top: 16,
    ),
  );
}
