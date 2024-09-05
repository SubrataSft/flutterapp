import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String hello ='Hello World 2 reajkjkfdhjsahf jdhfjaks  jakj fk';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text('title',style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              hello,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 50,),
            Text(hello),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(400)),
                border: Border.all(color: Colors.red,width: 5),
                color: Colors.blue.shade500,
              ),
              margin: EdgeInsets.all(34),
              padding: EdgeInsets.symmetric(horizontal:11),
              height: 100,
              width: double.infinity,
              child: Text(hello,style: const TextStyle(color: Colors.white),),
            ),
            Icon(Icons.add_circle,color: Colors.blue,size: 122,),
            Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2,height",height: 100,),
            ClipOval(child: Image.asset("assets/su.jpg",height: 150,)),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset("assets/su.jpg",height: 150,)),
          ],
        ),
      ),
    );
  }
}