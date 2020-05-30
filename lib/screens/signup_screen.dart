import 'package:devtodo/screens/todo_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("Welcome To",
                  style: TextStyle(
                    fontSize: 30.0,

                    color: Colors.white,
                  ),
              ),
              Text(
                "Dev To-Do",
                style: TextStyle(
                  fontSize: 40.0,
                ),

              ),
              Text(
                "< />",
                style: TextStyle(
                  fontSize: 50.0,

                ),
              ),


                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "First Name",
                            filled: true,
                            fillColor: Colors.white,

                          ),
                        ),
                        SizedBox(height: 5.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            filled: true,
                            fillColor: Colors.white,

                          ),
                        ),
                        SizedBox(height: 5.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "you@domain.com",
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            filled: true,
                            fillColor: Colors.white,
                            suffix: Icon(
                              Icons.remove_red_eye,
                              color: Theme.of(context).primaryColor,
                            )
                          ),
                          obscureText: true,


                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              filled: true,
                              fillColor: Colors.white,
                              suffix: Icon(
                                Icons.remove_red_eye,
                                color: Theme.of(context).primaryColor,
                              )
                          ),
                          obscureText: true,

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return todoScreen();
                            }));
                          },
                          color: Colors.white,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor

                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],


          ),
        ),
      ),
    );
  }
}
