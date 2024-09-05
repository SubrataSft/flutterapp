import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutterapps/screen/product_screen.dart';
import 'package:flutterapps/screen/user_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [


           HomeCategoryWidget(title: 'Product', iconData: Icons.account_circle, widget: Icon(Icons.access_alarm_sharp), OnTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (_)=> ProductScreen(title: "title") ));
           },),
           HomeCategoryWidget(title: 'User', iconData: Icons.add_a_photo, widget: Icon(Icons.accessible_forward_sharp),OnTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (_)=> UserListScreen() ));
           },),
           HomeCategoryWidget(title: 'Name', iconData: Icons.abc, widget: Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg"), OnTap: (){},),


          FlutterSwitch(value: onOff, onToggle: (bool value){
            onOff = !onOff;
            setState(() {});
          }),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen(title: 'from home screen',)));
          }, child: const Text("Go to next page")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen(title: 'Product',)));
          }, child: const Text("Go to next Screen")),
        ],
      ),
      ),
    );
  }
}

class HomeCategoryWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget widget;
  final Function OnTap;
  const HomeCategoryWidget({
    super.key, required this.title, required this.iconData, required this.widget, required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: InkWell(
        onTap: (){
          OnTap();
        },
        child: Card(
          color: Colors.amber,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Icon(iconData,size: 34,),
             widget,
             Text(title,style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),),
             const Icon(Icons.arrow_forward_ios_rounded),
           ],
         ),
                  ),
      ),
    );
  }
}
