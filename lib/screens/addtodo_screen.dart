import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addtodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Todo"),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0),
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.,
            children: [
              Text("Add New To do",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter new To do",

                ),

              ),
              RaisedButton(

                padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                onPressed: (){

                },
                child: Text("Add to List",
                style: TextStyle(
                  color: Theme.of(context).primaryColor
                ),
                ),
                color: Colors.white,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
