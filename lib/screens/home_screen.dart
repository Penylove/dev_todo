import 'package:devtodo/screens/signup_screen.dart';
import 'package:devtodo/screens/todo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
                "Dev To Do",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
//                  letterSpacing: 6.0,
                  fontWeight: FontWeight.w700,
                ),
            ),
            Text(
              "< />",
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.black12
              ),
              textAlign: TextAlign.right,
            ),

            Column(

              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white30
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Form(

                      key: _formKey,
                      child: Container(
                        child: Column(
                          children: [
                              TextFormField(

                                decoration: InputDecoration(

                                  hintText: "Enter your email ",
                                  filled: true,
                                  fillColor: Colors.white,
//                                prefix: Icon(
//                                  Icons.email,
//                                  size: 30.0,
//                                  color: Theme.of(context).primaryColor,
//                                )


                                ),
                              ),
                            SizedBox(height:10.0),
                            TextFormField(

                              decoration: InputDecoration(
                                hintText: "Password",
                                filled: true,
                                fillColor:Colors.white,

//                              suffix: Icon(
//                                Icons.remove_red_eye,
//                                size: 30.0,
//                                color: Theme.of(context).primaryColor,
//
//                              )
                              ),

                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            RaisedButton(
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return todoScreen();
    }));
                              },
                              color: Colors.white,
                              child: Text("Sign In",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color:Theme.of(context).primaryColor
                                ),

                              ),


                            ),
                          ],
                        ),
                      ),

                  ),

                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return SignupScreen();
                    }));
                  },
                    child: Text("Don't Have an Account?",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                    ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
