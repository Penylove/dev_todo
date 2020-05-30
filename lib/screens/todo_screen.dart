import 'package:devtodo/screens/addtodo_screen.dart';
import 'package:flutter/material.dart';

class todoScreen extends StatefulWidget {
  @override
  _todoScreenState createState() => _todoScreenState();
}

class _todoScreenState extends State<todoScreen> {

    String addTodo(){
      final SnackBar snackBar = SnackBar(content: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Add new Todo",

              ),

            ),
            RaisedButton(
              onPressed: (){

              },
              child:Text("Add Todo") ,
            )

          ],
        ),


      ),
        action: SnackBarAction(
          label: "Add Todo",
          onPressed: (){

          },

        ),

      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  final List<String> entries = <String>['Clean','Code','Eat'];
  final List<int> colorCodes = <int>[600,500,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dev To Do",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "Add new Todo",
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return addtodoScreen();
              }));
            },

          ),
        ],
      ),
      body: ListView.builder(
        itemCount: entries.length,

          itemBuilder: (BuildContext context, int index){
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
          }

      ),
    );
  }
}


