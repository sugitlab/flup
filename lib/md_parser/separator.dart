import 'dart:core';

const String mdSeparationTerm = "---";

List<String> mdSeparator(String md) {
  return md.split(mdSeparationTerm);
}
