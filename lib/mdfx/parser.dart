/// Markdown Parser for MDFX (Markdown Flutter eXtention)

import "package:markdown/markdown.dart";

String parse(String md) {
  final document = Document();
  var lines = md.replaceAll('\r\n', '\n').split('\n');
  final contents = document.parseLines(lines).map((node) => node.textContent);
  final html = markdownToHtml(md);
  return html;
}
