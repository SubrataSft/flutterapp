import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  TextEditingController emailTEController = TextEditingController();
  GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    ClipRect(
                        child: Image.network('https://cdn.pixabay.com/photo/2024/05/26/10'
                            '/15/bird-8788491_1280.jpg',height: 100,errorBuilder: (_,__,___){
                          return Icon(Icons.image,size: 34,);
                        },)),
                    Text('Subrata Singha'),
                    Text('subratachandrasingha@gmail',),
                  ],
                )),
            Column(
              children: [
                ListTile(
                  tileColor: Colors.amber,
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            )
          ],
        ),
      ) ,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    ClipRect(
                        child: Image.network('https://cdn.pixabay.com/photo/2024/05/26/10'
                            '/15/bird-8788491_1280.jpg',height: 100,errorBuilder: (_,__,___){
                          return Icon(Icons.image,size: 34,);
                        },)),
                    Text('Subrata Singha'),
                    Text('subratachandrasingha@gmail',),
                  ],
                )),
            Column(
              children: [
                ListTile(
                  tileColor: Colors.amber,
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text("home"),
                  subtitle: Text('ksjfggjghj'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            )
          ],
        ),        ),

      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: fromkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Type your mail";
                      }
                    },
                    controller: emailTEController,
                    maxLines: null,
                    style: GoogleFonts.poppins(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2),
                      ),
                      hintText: 'Type your email',
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(
                    fromkey.currentState!.validate()){
                      emailTEController.clear();
                    };
                  }, child: Text("Submit")),
                  Text("Subrata Singha",style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: (){}, child: Text("Button",))),
                  TextButton(onPressed: (){}, child: Text("Button 2")),
                  OutlinedButton(onPressed: (){}, child: Text("OutlineButton")),

                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed:(){

            showModalBottomSheet(isScrollControlled: true,
                context: context,
                builder: (context){
                  return Container(
                    height: 800,
                  );
                });

          },child: Icon(Icons.add)),
    );
  }
}




