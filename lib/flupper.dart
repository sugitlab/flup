import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flupper/mdfx/parser.dart';

class Flupper extends StatelessWidget {
  const Flupper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flupper Slides',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
      child:Text(parse(md)),
        //child: Markdown(
        //  data: md,
        //),
      ),
    );
  }
}

const md = '''
# header

body

## header2

body2
''';
