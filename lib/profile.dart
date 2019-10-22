import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new ProfilePage(),
        routes: <String, WidgetBuilder>{
         "/_SplashScreen": (BuildContext context) => new SplashScreen(),
        }));


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}



class _ProfilePageState extends State<ProfilePage> {
  int _counter1 = 0;
  int _counter2 = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.purple[800],
                      Colors.purple[700],
                      Colors.purple[600],
                      Colors.purple[500],
                    ],
                  ),
                ),
                height: 180,
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chico5.png'),
                                  minRadius: 45,
                                  maxRadius: 45,
                                ),
                    ),
                    Text(
                      "JOHN DOE",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                padding: EdgeInsets.only(bottom: 30),
              ),
              Align(
                alignment: Alignment(0, -0.5),
                child: Container(
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, offset: Offset(0, 4))
                        ]),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsetsDirectional.only(start: 50),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _counter1++;
                                  });
                                },
                                icon: Icon(Icons.favorite),
                              ),
                              Text("Connections"),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "$_counter1",
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.only(start: 80),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _counter2++;
                                  });
                                },
                                icon: Icon(Icons.cloud),
                              ),
                              Text("Chats"),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "$_counter2",
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                      ],
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 480,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsetsDirectional.only(start: 16),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Align(
                                  alignment: Alignment(-1, 0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Text("Status"),
                                  ),
                                ),
                              padding: EdgeInsets.only(top: 20),),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Sab Jaana jaruri hai?",
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                              Align(
                                alignment: Alignment(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text("Email"),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "maibdoehai@doerox.com",
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                              Align(
                                alignment: Alignment(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text("Phone Number"),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "+91 9123456789",
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                              Align(
                                alignment: Alignment(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text("Date of birth"),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "31st February 1989",
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0, 0.95),
                child: Container(
                  color: Colors.green,
                  height: 45,
                  width: 200,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Log out",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/_SplashScreen");
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }

  
}