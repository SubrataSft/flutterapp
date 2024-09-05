import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Column(
            children: [
            ElevatedButton(onPressed: () {}, child: const Text("button")),
            ElevatedButton(onPressed: () {}, child: const Text("button")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,),
                onPressed: () {}, child: const Text("button")),
            ElevatedButton(onPressed: (){}, child: Text("")),
            ]
    ),
    );
  }
}
