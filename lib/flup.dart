import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Flup extends StatefulWidget {
  const Flup({Key? key}) : super(key: key);
  @override
  _FlupState createState() => _FlupState();
}

class _FlupState extends State<Flup> {
  int page = 0;
  final int max = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flup Slides',
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SlideScreen(
            child: GestureDetector(
              onTap: () {
                setState(
                  () => {
                    page = (page == max - 1) ? 0 : (page + 1),
                  },
                );
              },
              child: IndexedStack(
                index: page,
                children: const [
                  BasicPage(page: 1, md: md1),
                  BasicPage(page: 2, md: md2),
                  BasicPage(page: 3, md: md3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
        Markdown(data: md),
      ],
    );
  }
}

class SlideScreen extends StatelessWidget {
  const SlideScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Theme.of(context).canvasColor,
        child: child,
      ),
    );
  }
}

const md1 = '''
# header

body

## header2

body2
''';

const md2 = '''
# Next Page

- test
- list

## Sub

1. number
1. list

## Table

|test|test2|
|--|--|
|item|item2|

## Code

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Flup());
}
```

<!-- 
Comment
-->

''';

const md3 = '''
# header

third page

![](https://images.unsplash.com/photo-1495819903255-00fdfa38a8de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1627&q=80#300x300)

## header2

second body 
''';
