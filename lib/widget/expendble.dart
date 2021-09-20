import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  _ExpandState createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  bool _expanded = false;
  var _test = "Full Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Learning"),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          child: ExpansionPanelList(
            animationDuration: Duration(milliseconds: 2000),
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(
                      'Click To Expand',
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                },
                body: ListTile(
                  title: Text('Description text',
                      style: TextStyle(color: Colors.black)),
                ),
                isExpanded: _expanded,
                canTapOnHeader: true,
              ),
            ],
            dividerColor: Colors.grey,
            expansionCallback: (panelIndex, isExpanded) {
              _expanded = !_expanded;
              setState(
                () {},
              );
            },
          ),
        ),
      ]),
    );
  }
}
