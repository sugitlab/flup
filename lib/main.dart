import 'package:flutter/material.dart';
import 'package:flup/flup.dart';

void main() {
  runApp(
    const Flup(
      style: FlupStyle(coverImageUrl: cover),
      title: "Sample Flup",
      md: md,
    ),
  );
}

const cover =
    "https://images.unsplash.com/photo-1541897976173-747ef83244b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80";

const md = '''
# Flup

Presentation Slides for Flutter Developers

---

# Slide Title

## Slide Subtitle

- bullet text
- bullet text
- bullet text

---

# Slide

1. Number list
1. Number list

## Table

|Test|Test2|
|--|--|
|Item|Item2|

---

# Code

```dart
class _SampleMyWidgetState extends State<SampleMyWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Counter',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          ElevatedButton(
            child: const Text('count up'),
            onPressed: () {
              setState(() => counter = counter + 1);
            },
          ),
          Text(
            '\$counter',
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}


```

---

# Image

Flutter Hummingbird.

![](https://images.unsplash.com/photo-1495819903255-00fdfa38a8de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1627&q=80#300x500)

> Image size can be changed by specifying the suffix, #widthxheight.

''';
