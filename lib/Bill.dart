import 'package:flutter/material.dart';

class BusinessPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BusinessPageWidgetState();
  }
}

class BusinessPageWidgetState extends State<BusinessPageWidget>{
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: billTabs.length,
        child: new Scaffold(
      appBar: new AppBar(
        leading:new Icon(
          Icons.search
      ),
        bottom: new TabBar(
            tabs:billTabs.map((billTab billtab){
              return new Tab(
                text: billtab.text
              );
        }).toList()
        ),
        
        title: new TextField(
  decoration: InputDecoration(
    labelText: "请输入查找内容"
  ),
        )
      ),
      body: TabBarView(children: billTabs.map((billTab billtab){
         return tabcontroller(billtab:billtab);
      }).toList())
    )
    );
  }
}

const List<billTab> billTabs = <billTab>[
  billTab(
    text: "全部",
  ),
  billTab(
    text: "待付款",
  ),
  billTab(
    text:"待评价"
  ),
  billTab(
      text:"退款/售后"
  )
];

class tabcontroller extends StatelessWidget{
  const tabcontroller({Key key, this.billtab}): super(key: key);
  final billTab billtab;
  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          Card(
            elevation: 5.0,
            child: new Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                      Icons.local_dining,
                    size: 38.0,
                  ),
                  title:Text(billtab.text+"商品名"),
                  trailing: Text("已完成"),
                ),
                Divider(),
                ListTile(
                  title:Text("下单时间：2018-11-4 12:14"),
                  subtitle: Text("支付：30元"),
                )
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: new Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.local_dining,
                    size: 38.0,
                  ),
                  title:Text(billtab.text+"商品名"),
                  trailing: Text("已完成"),
                ),
                Divider(),
                ListTile(
                  title:Text("下单时间：2018-11-4 12:14"),
                  subtitle: Text("支付：30元"),
                )
              ],
            ),
          ),
        ]
    );
  }
}
class billTab{
  const billTab({ this.text });
  final String text;

}