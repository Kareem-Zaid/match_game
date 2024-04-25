import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          title: const Center(
            child: Text(
              'تطابق الصورتين',
              style: TextStyle(fontFamily: 'Cairo'),
            ),
          ),
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Try Again',
          style: TextStyle(fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                // flex: 7,
                // Ratio to other elements in the same layout
                child: TextButton(
                  onPressed: () {
                    debugPrint('You have pressed on the left image');
                  },
                  child: Image.asset('images/image-1.png'),
                ),
              ),
              Expanded(
                flex: 1,
                // By default, flex: 1
                child: TextButton(
                  onPressed: () {
                    debugPrint('You have pressed on the right image');
                  },
                  child: Image.asset('images/image-1.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
