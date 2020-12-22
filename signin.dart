import 'package:flutter/material.dart';

class mySign extends StatefulWidget {
  String username="";
  @override
  _mySignState createState() => _mySignState();
}

class _mySignState extends State<mySign> {
  @override
  Widget build(BuildContext context) {
    final username = TextField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
         onPressed: () {
         setState(() {

         });
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),),
    );
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text("PLANNER"),
        ),
        backgroundColor: Colors.blueGrey[700],

      ),
      backgroundColor: Colors.blueGrey,

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/plan.png'),
                  ),
                  Text(
                    "Planner",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'

                    ),
                  ),
                  Text(
                    "ORGANISE YOUR DAY",
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.teal[100],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro',
                        letterSpacing: 2.5
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 130.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Column(

              children: <Widget>[
                username,
                SizedBox(
                  height: 2.0,
                ),
                passwordField,
                SizedBox(
                  height: 2.0,
                ),
                loginButon,
                SizedBox(
                  height: 2.0,
                ),
              ],
            )
            ),

          ],
        ),
      ),
    );
  }
}

