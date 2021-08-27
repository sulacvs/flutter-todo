import 'package:flutter/material.dart';

class todoPage extends StatefulWidget {
  const todoPage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  _todoPageState createState() => _todoPageState();
}

class _todoPageState extends State<todoPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        // drawer: Drawer(
        //     child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text('This is the Drawer'),
        //       ElevatedButton(
        //           onPressed: () {}, child: const Text('Close Drawer')),
        //     ],
        //   ),
        // )),
        appBar: AppBar(
          title: Text(this.widget.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [buildTodoCreator(_formKey, size), buildList(size)],
          ),
        ));
  }

  Widget listItemComponent(BuildContext context, int index) {
    return ExpansionTile(
      title: Text("TITLE"),
      subtitle:
          Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
      children: [Text("hello")],
    );
  }

  Widget buildTodoCreator(Key _formKey, size) {
    return Container(
      width: size.width,
      child: Card(
          child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                  ),
                ),
                TextField(
                  minLines: 2,
                  maxLines: 10,
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30,right: 30),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Create"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Reset"),
                      )
                    ],
                  ),
                ),
                SizedBox(width: size.width,height: 30)
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget buildList(size) {
    return Container(
        width: size.width,
        height: 300,
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
            return listItemComponent(context, index);
          },
        ));
  }
}
