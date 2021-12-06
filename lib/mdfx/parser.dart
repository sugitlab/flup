/// Markdown Parser for MDFX (Markdown Flutter eXtention) 

import "package:markdown/markdown.dart";

String parse(String md) {
  final result = markdownToHtml(md);
  return result;
}
