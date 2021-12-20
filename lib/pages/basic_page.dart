import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../md_style/markdown_style_sheet.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key, required this.md, required this.page})
      : super(key: key);
  final int page;
  final String md;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(child: Text('- $page -')),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Markdown(
            selectable: true,
            data: md,
            styleSheet: defaultStyle,
          ),
        ),
      ],
    );
  }
}
