import 'package:flutter/material.dart';
import 'package:flutterapps/screen/product_screen.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User list Screen"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen()));
      }, child: const Text("Go to next page")),),
    );
  }
}
