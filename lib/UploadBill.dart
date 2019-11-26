import 'package:flutter/material.dart';

class UploadBill extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return UploadBillBuild();
  }
}

class UploadBillBuild extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UploadBillState();
  }
}
class UploadBillState extends State<UploadBillBuild>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
      }),
        title: Text("发布订单"),
      ),
   body: Card(
    child: ListView(
    children: <Widget>[
      ListTile(
        title: Text("订单类型"),
        trailing: IconButton(
          icon:Icon(Icons.arrow_forward_ios),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return new ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                            "订单类型",
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.directions_run
                        ),
                        title: Text(
                          "外卖代拿上门"
                        ),
                        trailing: Radio(value: null, groupValue: null, onChanged: null),
                      ),
                      ListTile(
                        leading: Icon(
                            Icons.directions_run
                        ),
                        title: Text(
                            "食堂/小卖部外带上门"
                        ),
                        trailing: Radio(value: null, groupValue: null, onChanged: null),
                      )
                    ],
                  );
                },
            ).then((val) {
              print(val);
            });})
        ),
    Divider(),
    ListTile(
      leading: Icon(Icons.location_on),
    title: Text("跑腿地点"),
    subtitle: TextField(
    decoration: InputDecoration(
    ),
    ),
    ),
    ListTile(
    title: Text("送达地点"),
    subtitle: TextField(),
      leading: Icon(Icons.location_on),
    ),
    ListTile(
    title: Text("报酬金额"),
        leading: Icon(Icons.money_off),
    subtitle: TextField(
    ),
    ),
    ListTile(
    title: Text("订单备注"),
    leading:  Icon(Icons.edit),
    subtitle: TextField(
    ),
    ),
      Container(
        height: 50.0
      ),
      Align(
        alignment: Alignment.center,
        child: FloatingActionButton.extended(
        label: Text("发布"),
        onPressed: (){
        },
      )
      )
    ],
    )
    )
    );
}
}