import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flup/md_style/markdown_style_sheet.dart';

// Side by Side with Widget
class SbswwPage extends StatelessWidget {
  const SbswwPage({Key? key, this.widget, required this.md, required this.page})
      : super(key: key);
  final int page;
  final String md;
  final Widget? widget;
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
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: (widget != null)
                      ? widget
                      : Container(color: Colors.indigo),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Markdown(
                  selectable: true,
                  data: md,
                  styleSheet: defaultStyle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
