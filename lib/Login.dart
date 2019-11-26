import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Bill.dart';
import 'MyDetails.dart';
import 'Message.dart';
import 'main.dart';

class LoginM extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home:LoginMount(),
      routes: {
        "/index":(context)=>MyApp()
      },
    );
  }
}
class LoginMount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPage();
  }
}
class LoginPage extends State<LoginMount>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(

     home: new Scaffold(
       backgroundColor: Colors.white,
     appBar:  new AppBar(
       elevation: 0.0,
       title: new Center(
         child: new Text(
           "登录",
         ),
       ),
     ),
     body: Column(
       children: <Widget>[
         Container(
           height: 100.0,
         ),
         Center(
           child: Text(
               "DD打饭",
             style: TextStyle(
               fontSize: 40.0,
               color: Colors.blue
     )
   )
     ),
         Container(
           height: 50.0,
         ),
         Center(
             child:Container(
                 width: 300.0,
                 child:TextField(
                     decoration: InputDecoration(
                         labelText: "账号",
                         icon: Icon(
                             Icons.supervisor_account,
                         size: 30.0,
                         )
                     )
                 )
             )
         ),
         Center(
             child:Container(
                 width: 300.0,
                 child:TextField(
                     decoration: InputDecoration(
                         labelText: "密码",
                         icon: Icon(
                             Icons.vpn_key,
    size: 30.0,
    )
    )
   )
   )
    ),
         Container(
           height: 30.0,
         ),
         Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               FlatButton(
                 onPressed: () {
                   Navigator.pushNamed(context, "/index");
                 },
                 child: Text("登录",
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.blue
                 ),),
               ),
               FlatButton(
                 onPressed: () {
                 },
                 child: Text("注册",
                   style: TextStyle(
                       fontSize: 20.0,
                     color: Colors.blue
                   ),),
               )
             ],
           )
    )
   ]
    )
     )
   );
  }
}