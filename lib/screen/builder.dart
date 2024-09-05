import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
   BuilderScreen({super.key});

  List<String> names =[
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
    "Subrata",
    "Rahim",
    "Karim",
    "Raju",
  ];
List<String> urls =[
  "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
          const Text("data"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: urls.length,
                itemBuilder: (context,index) {
                return ListTile(
                  leading: Image.network(urls[index]),
                  tileColor: Colors.green.shade100,
                  title: Text(names[index],style:TextStyle(color: Colors.blue,fontSize: 27)),);
              }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 4,);
              },
        
              ),
            ),
          ],
        ),
      ),
    );
  }
}
