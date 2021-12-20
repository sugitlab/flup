import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flup/flup.dart';
import 'package:flup/md_style/markdown_style_sheet.dart';

class BasicTitlePage extends StatelessWidget {
  final int page;
  final String md;
  final String? coverUrl;
  const BasicTitlePage({
    Key? key,
    this.coverUrl,
    required this.md,
    required this.page,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SlideScreen(
          child: coverUrl != null
              ? Image.network(coverUrl!, fit: BoxFit.fill)
              : Container(),
        ),
        Container(color: Colors.black.withOpacity(0.5)),
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
            styleSheet: defaultTitleStyle(context),
          ),
        ),
      ],
    );
  }
}
