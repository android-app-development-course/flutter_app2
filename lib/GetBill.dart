import 'package:flutter/material.dart';

class GetBill extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBillBuild();
  }
}
class GetBillBuild extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetBillState();
  }
}
class GetBillState extends State<GetBillBuild>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
appBar: AppBar(
  leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios
      ),
      onPressed: (){
        Navigator.pop(context);
      }),
  title: Text("接受订单")
),
      body: new ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("订单酬劳"),
                  trailing: Text("￥7",
                  style: TextStyle(
                    fontSize: 30.0
                  ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text("跑腿地点"),
                  trailing: Text("西二宿舍",
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                ),
                ListTile(
                  title: Text("送达地点"),
                  trailing: Text("西二宿舍410",
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                ),
                ListTile(
                  title: Text("订单备注"),
                  trailing: Text("尾号为3155的烤肉拌饭",
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                ),
                    Align(alignment: Alignment.centerRight,
                      child: FlatButton(
                          onPressed: (){},
                        child: Text("接单",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          height: 1.0
                        ),),

            ),
          ),
        ],
      ),
    )
    ]
            )
    );
  }
}